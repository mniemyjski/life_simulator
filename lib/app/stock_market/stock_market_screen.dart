import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:richeable/app/stock_market/cubit/candles/candles_cubit.dart';
import 'package:richeable/config/injectable/injection.dart';

import '../../config/routes/routes.gr.dart';
import '../../constants/constants.dart';
import '../../utilities/utilities.dart';
import '../../widgets/widgets.dart';
import '../date/widgets/next_day.dart';
import '../game/widget/app_bar_game.dart';
import 'cubit/stock_market/stock_market_cubit.dart';
import 'models/candle/candle.dart';
import 'models/instrument/instrument.dart';

class StockMarketScreen extends StatefulWidget {
  const StockMarketScreen({Key? key}) : super(key: key);

  @override
  State<StockMarketScreen> createState() => _StockMarketScreenState();
}

class _StockMarketScreenState extends State<StockMarketScreen> {
  ETypeInstrument eTypeInstrument = ETypeInstrument.crypto;
  final List<bool> _selectedFruits = <bool>[true, false, false];

  _changeMarket(int index) {
    setState(() {
      for (int i = 0; i < _selectedFruits.length; i++) {
        _selectedFruits[i] = i == index;
        eTypeInstrument = ETypeInstrument.values[index];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CandlesCubit>(),
      child: CustomScaffold(
        appBar: AppBarGame(
          title: LocaleKeys.stockMarket.tr(),
          showTimeSpend: false,
        ),
        body: Column(children: [
          ToggleButtons(
            onPressed: (int index) => _changeMarket(index),
            borderRadius: const BorderRadius.all(Radius.circular(0)),
            selectedBorderColor: Colors.white70,
            selectedColor: Colors.white,
            fillColor: Theme.of(context).scaffoldBackgroundColor,
            color: Colors.white70,
            constraints: BoxConstraints(
                minWidth: (MediaQuery.of(context).size.width - 16) / 3, minHeight: 56),
            isSelected: _selectedFruits,
            children: [
              Text(Enums.toText(ETypeInstrument.crypto).tr()),
              Text(Enums.toText(ETypeInstrument.resources).tr()),
              Text(Enums.toText(ETypeInstrument.company).tr()),
            ],
          ),
          Builder(
            builder: (context) {
              final List<Candle> totalCandles = context
                  .watch<CandlesCubit>()
                  .state
                  .maybeWhen(orElse: () => [], loaded: (candles) => candles);

              final List<Instrument> totalInstruments = context
                  .watch<StockMarketCubit>()
                  .state
                  .maybeWhen(orElse: () => [], loaded: (instruments) => instruments);

              if (totalCandles.isEmpty || totalInstruments.isEmpty) {
                return const Expanded(
                  child: Center(
                    child: SpinKitFadingCircle(
                      color: Colors.white,
                      size: 80.0,
                    ),
                  ),
                );
              }

              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  width: double.infinity,
                  color: Theme.of(context).cardColor,
                  child: SingleChildScrollView(
                    child: DataTable(
                      sortColumnIndex: 2,
                      showCheckboxColumn: false,
                      columnSpacing: 32,
                      dataTextStyle: Theme.of(context).textTheme.bodyText1,
                      headingTextStyle: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontWeight: FontWeight.bold),
                      columns: [
                        DataColumn(
                          label: Text(LocaleKeys.symbols.tr()),
                          numeric: false,
                        ),
                        const DataColumn(
                          label: Text('24h'),
                          numeric: true,
                        ),
                        const DataColumn(
                          label: Text('7d'),
                          numeric: true,
                        ),
                        const DataColumn(
                          label: Text('30d'),
                          numeric: true,
                        ),
                        DataColumn(
                          label: Text(LocaleKeys.price.tr()),
                          numeric: true,
                        ),
                      ],
                      rows: totalInstruments.where((e) => e.eTypeInstrument == eTypeInstrument).map(
                        (i) {
                          List<Candle> candlesForInstrument =
                              totalCandles.where((g) => g.instrument == i.name).toList();

                          double hours = (candlesForInstrument.last.close /
                                      candlesForInstrument[candlesForInstrument.length - 2].close -
                                  1) *
                              100;
                          double days7 = (candlesForInstrument.last.close /
                                      candlesForInstrument[candlesForInstrument.length - 8].close -
                                  1) *
                              100;
                          double days30 = (candlesForInstrument.last.close /
                                      candlesForInstrument[candlesForInstrument.length - 31].close -
                                  1) *
                              100;

                          return DataRow(
                              onSelectChanged: (b) {
                                context.router.push(InstrumentRoute(
                                    id: i.id,
                                    blocProvider: BlocProvider.of<CandlesCubit>(context)));
                              },
                              cells: [
                                DataCell(Text(Enums.toText(i.name))),
                                DataCell(
                                  Text('${hours.toStringAsFixed(2)}%',
                                      style:
                                          TextStyle(color: hours < 0 ? Colors.red : Colors.green)),
                                ),
                                DataCell(
                                  Text('${days7.toStringAsFixed(2)}%',
                                      style:
                                          TextStyle(color: days7 < 0 ? Colors.red : Colors.green)),
                                ),
                                DataCell(
                                  Text('${days30.toStringAsFixed(2)}%',
                                      style:
                                          TextStyle(color: days30 < 0 ? Colors.red : Colors.green)),
                                ),
                                DataCell(
                                  Text(candlesForInstrument.last.close.toMoney()),
                                ),
                              ]);
                        },
                      ).toList(),
                    ),
                  ),
                ),
              );
            },
          ),
        ]),
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
      ),
    );
  }
}
