import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:interactive_chart/interactive_chart.dart';
import 'package:richeable/app/stock_market/cubit/candles/candles_cubit.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:richeable/widgets/custom_card.dart';
import 'package:richeable/widgets/widgets.dart';

import '../../config/injectable/injection.dart';
import '../../constants/locale_keys.g.dart';
import '../date/widgets/next_day.dart';
import '../game/widget/app_bar_game.dart';
import 'cubit/exchanges/exchanges_cubit.dart';
import 'cubit/instruments/instruments_cubit.dart';
import 'models/candle/candle.dart';
import 'models/exchange/exchange.dart';
import 'models/instrument/instrument.dart';
import 'widgets/buy_button.dart';
import 'widgets/sell_button.dart';

class InstrumentScreen extends StatelessWidget implements AutoRouteWrapper {
  final int instrumentId;
  final CandlesCubit candlesProvider;
  final InstrumentsCubit instrumentsCubit;

  const InstrumentScreen({
    Key? key,
    required this.instrumentId,
    required this.candlesProvider,
    required this.instrumentsCubit,
  }) : super(key: key);

  _toCandleData(List<Candle> candles) {
    List<CandleData> result = [];
    for (Candle i in candles) {
      result.add(CandleData(
        timestamp: (i.dateTime.millisecondsSinceEpoch / 1000).round(),
        open: i.open,
        high: i.high,
        low: i.low,
        close: i.close,
        volume: 0,
      ));
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (_) => getIt<ExchangesCubit>(param1: instrumentId),
      child: BlocBuilder<InstrumentsCubit, InstrumentsState>(
        builder: (context, state) {
          return state.maybeWhen(
              orElse: () => Container(),
              loaded: (instruments) {
                Instrument instrument =
                    instruments.where((e) => e.id == instrumentId).toList().first;
                List<Candle> candlesFroI = context.watch<CandlesCubit>().state.maybeWhen(
                    orElse: () => [],
                    loaded: (candles) => candles
                        .where((g) => g.eNameInstrument == instrument.eNameInstrument)
                        .toList());

                return CustomScaffold(
                  appBar: AppBarGame(
                    title: Enums.toText(instrument.eNameInstrument).tr(),
                    showTimeSpend: false,
                  ),
                  body: Column(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: SizedBox(
                              height: 300,
                              child: InteractiveChart(
                                candles: _toCandleData(candlesFroI),
                                style: ChartStyle(
                                  priceGridLineColor: Colors.white,
                                  priceLabelStyle:
                                      const TextStyle(color: Colors.white, fontSize: 8),
                                  timeLabelStyle: const TextStyle(color: Colors.white, fontSize: 8),
                                  selectionHighlightColor: Colors.white.withOpacity(0.3),
                                  overlayBackgroundColor: Colors.white.withOpacity(0.3),
                                  timeLabelHeight: 18,
                                  volumeHeightFactor: 0,
                                ),
                                timeLabel: (timestamp, visibleDataCount) =>
                                    DateTime.fromMillisecondsSinceEpoch(timestamp * 1000)
                                        .onlyDateToString(),
                                priceLabel: (price) => price.toMoney(),
                                overlayInfo: (candle) => {
                                  LocaleKeys.date.tr():
                                      DateTime.fromMillisecondsSinceEpoch(candle.timestamp * 1000)
                                          .onlyDateToString(),
                                  LocaleKeys.open.tr(): "${candle.open?.toMoney()}",
                                  LocaleKeys.high.tr(): "${candle.high?.toMoney()}",
                                  LocaleKeys.low.tr(): "${candle.low?.toMoney()}",
                                  LocaleKeys.close.tr(): "${candle.close?.toMoney()}",
                                },
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              BuyButton(
                                instrument: instrument,
                                lastCandle: candlesFroI.last,
                              ),
                              SellButton(instrument: instrument, lastCandle: candlesFroI.last),
                            ],
                          ),
                          const SizedBox(height: 16),
                          BlocBuilder<ExchangesCubit, ExchangesState>(
                            builder: (context, state) {
                              return state.maybeWhen(
                                  orElse: () => Container(),
                                  loaded: (t) {
                                    List<Exchange> transactions =
                                        List.from(t.where((e) => e.instrumentId == instrumentId));
                                    double amount = 0;
                                    double value = 0;
                                    double cost = 0;

                                    for (var element in transactions) {
                                      amount += element.count;
                                      value += element.count * candlesFroI.last.close;
                                      cost += element.count * element.price;
                                    }

                                    double change = cost > 0 ? (value / cost - 1) * 100 : 0;
                                    double average = cost > 0 ? (cost / amount) : 0;
                                    return Column(
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            CustomCard(
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: RichText(
                                                  text: TextSpan(
                                                    style: Theme.of(context).textTheme.bodyText2,
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        text: '${LocaleKeys.amount.tr()}: ',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyText2!
                                                            .copyWith(fontWeight: FontWeight.bold),
                                                      ),
                                                      TextSpan(
                                                        text:
                                                            '${amount.toExp()} ${Enums.toText(instrument.eNameInstrument)}',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                    child: CustomCard(
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: RichText(
                                                      text: TextSpan(
                                                        style:
                                                            Theme.of(context).textTheme.bodyText2,
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text: '${LocaleKeys.value.tr()}: ',
                                                            style: Theme.of(context)
                                                                .textTheme
                                                                .bodyText2!
                                                                .copyWith(
                                                                    fontWeight: FontWeight.bold),
                                                          ),
                                                          TextSpan(
                                                            text: '${value.toMoney()}',
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                )),
                                                Expanded(
                                                    child: CustomCard(
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: RichText(
                                                      text: TextSpan(
                                                        style:
                                                            Theme.of(context).textTheme.bodyText2,
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text: '${LocaleKeys.change.tr()}: ',
                                                            style: Theme.of(context)
                                                                .textTheme
                                                                .bodyText2!
                                                                .copyWith(
                                                                    fontWeight: FontWeight.bold),
                                                          ),
                                                          TextSpan(
                                                            text: '${change.toStringAsFixed(2)}%',
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                )),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                                child: CustomCard(
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: RichText(
                                                  text: TextSpan(
                                                    style: Theme.of(context).textTheme.bodyText2,
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        text: '${LocaleKeys.cost.tr()}: ',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyText2!
                                                            .copyWith(fontWeight: FontWeight.bold),
                                                      ),
                                                      TextSpan(
                                                        text: '${cost.toMoney()}',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            )),
                                            Expanded(
                                                child: CustomCard(
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: RichText(
                                                  text: TextSpan(
                                                    style: Theme.of(context).textTheme.bodyText2,
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        text: '${LocaleKeys.average.tr()}: ',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyText2!
                                                            .copyWith(fontWeight: FontWeight.bold),
                                                      ),
                                                      TextSpan(
                                                        text: '${average.toMoney()}',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            )),
                                          ],
                                        ),
                                      ],
                                    );
                                  });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
                  floatingActionButton: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        FloatingActionButton(
                          heroTag: null,
                          onPressed: () => context.router.pop(),
                          child: const FaIcon(FontAwesomeIcons.arrowRotateLeft),
                        ),
                        const NextDayButton(),
                        const SizedBox(width: 56),
                      ],
                    ),
                  ),
                );
              });
        },
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider.value(
      value: instrumentsCubit,
      child: BlocProvider.value(
        value: candlesProvider,
        child: this,
      ),
    );
  }
}
