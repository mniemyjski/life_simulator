import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:interactive_chart/interactive_chart.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:richeable/widgets/widgets.dart';

import '../../constants/locale_keys.g.dart';
import '../date/widgets/next_day.dart';
import '../game/widget/app_bar_stats.dart';
import 'cubit/exchanges/exchanges_cubit.dart';
import 'cubit/stock_market/stock_market_cubit.dart';
import 'models/candle/candle.dart';
import 'models/exchange/exchange.dart';
import 'models/instrument/instrument.dart';
import 'widgets/buy_button.dart';
import 'widgets/sell_button.dart';

class InstrumentScreen extends StatelessWidget {
  final String id;

  const InstrumentScreen({Key? key, required this.id}) : super(key: key);

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
    return CustomScaffold(
      body: Column(
        children: [
          const AppBarStats(),
          BlocBuilder<StockMarketCubit, StockMarketState>(
            builder: (context, state) {
              return state.maybeWhen(
                  orElse: () => Container(),
                  loaded: (instruments, candles) {
                    Instrument instrument = instruments.where((e) => e.id == id).toList().first;
                    List<Candle> candlesFroI =
                        candles.where((e) => e.instrument == instrument.name).toList();

                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: SizedBox(
                            height: 300,
                            child: InteractiveChart(
                              candles: _toCandleData(candlesFroI),
                              style: ChartStyle(
                                priceGridLineColor: Colors.white,
                                priceLabelStyle: const TextStyle(color: Colors.white, fontSize: 8),
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
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Divider(
                            color: Theme.of(context).primaryColor,
                            thickness: 2,
                          ),
                        ),
                        Row(
                          children: [
                            BuyButton(instrument: instrument, lastCandle: candlesFroI.last),
                            SellButton(instrument: instrument, lastCandle: candlesFroI.last),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Divider(
                            color: Theme.of(context).primaryColor,
                            thickness: 2,
                          ),
                        ),
                        BlocBuilder<ExchangesCubit, ExchangesState>(
                          builder: (context, state) {
                            return state.maybeWhen(
                                orElse: () => Container(),
                                loaded: (t) {
                                  List<Exchange> transactions =
                                      List.from(t.where((e) => e.instrument.id == id));
                                  double amount = 0;
                                  double value = 0;
                                  double cost = 0;

                                  for (var element in transactions) {
                                    amount += element.count;
                                    value += element.count * candlesFroI.last.close;
                                    cost += element.count * candlesFroI.last.close;
                                  }

                                  double change = cost > 0 ? (value / cost - 1) * 100 : 0;
                                  double average = cost > 0 ? (cost / amount) : 0;
                                  return Column(
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                              child: Card(
                                            shape: BeveledRectangleBorder(
                                              borderRadius: BorderRadius.circular(0),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: RichText(
                                                text: TextSpan(
                                                  style: Theme.of(context).textTheme.bodyText1,
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: '${LocaleKeys.amount.tr()}: ',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText1!
                                                          .copyWith(fontWeight: FontWeight.bold),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          '${amount.toStringAsFixed(4)} ${instrument.name}',
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )),
                                          Expanded(
                                              child: Card(
                                            shape: BeveledRectangleBorder(
                                              borderRadius: BorderRadius.circular(0),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: RichText(
                                                text: TextSpan(
                                                  style: Theme.of(context).textTheme.bodyText1,
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: '${LocaleKeys.value.tr()}: ',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText1!
                                                          .copyWith(fontWeight: FontWeight.bold),
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
                                              child: Card(
                                            shape: BeveledRectangleBorder(
                                              borderRadius: BorderRadius.circular(0),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: RichText(
                                                text: TextSpan(
                                                  style: Theme.of(context).textTheme.bodyText1,
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: '${LocaleKeys.change.tr()}: ',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText1!
                                                          .copyWith(fontWeight: FontWeight.bold),
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
                                      Row(
                                        children: [
                                          Expanded(
                                              child: Card(
                                            shape: BeveledRectangleBorder(
                                              borderRadius: BorderRadius.circular(0),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: RichText(
                                                text: TextSpan(
                                                  style: Theme.of(context).textTheme.bodyText1,
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: '${LocaleKeys.cost.tr()}: ',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText1!
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
                                              child: Card(
                                            shape: BeveledRectangleBorder(
                                              borderRadius: BorderRadius.circular(0),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: RichText(
                                                text: TextSpan(
                                                  style: Theme.of(context).textTheme.bodyText1,
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: '${LocaleKeys.average.tr()}: ',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText1!
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
                    );
                  });
            },
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
  }
}
