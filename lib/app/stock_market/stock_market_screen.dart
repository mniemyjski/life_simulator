import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../config/routes/routes.gr.dart';
import '../../constants/constants.dart';
import '../../utilities/utilities.dart';
import '../../widgets/widgets.dart';
import '../date/widgets/next_day.dart';
import '../game/widget/app_bar_stats.dart';
import 'cubit/stock_market/stock_market_cubit.dart';
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
    return CustomScaffold(
      body: Column(children: [
        const AppBarStats(),
        ToggleButtons(
          onPressed: (int index) => _changeMarket(index),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          selectedBorderColor: Colors.white70,
          selectedColor: Colors.white,
          fillColor: Theme.of(context).scaffoldBackgroundColor,
          color: Colors.white70,
          constraints: const BoxConstraints(
            minHeight: 40.0,
            minWidth: 80.0,
          ),
          isSelected: _selectedFruits,
          children: [
            Text(Enums.toText(ETypeInstrument.crypto).tr()),
            Text(Enums.toText(ETypeInstrument.resources).tr()),
            Text(Enums.toText(ETypeInstrument.company).tr()),
          ],
        ),
        BlocBuilder<StockMarketCubit, StockMarketState>(
          builder: (context, state) {
            return state.maybeWhen(
                orElse: () => Container(),
                loaded: (instruments) {
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
                              label: const Text('7d'),
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
                          rows: instruments.where((e) => e.eTypeInstrument == eTypeInstrument).map(
                            (i) {
                              double hours =
                                  (i.candles.last.close / i.candles[i.candles.length - 2].close -
                                          1) *
                                      100;
                              double days7 =
                                  (i.candles.last.close / i.candles[i.candles.length - 8].close -
                                          1) *
                                      100;
                              double days30 =
                                  (i.candles.last.close / i.candles[i.candles.length - 31].close -
                                          1) *
                                      100;

                              return DataRow(
                                  onSelectChanged: (b) {
                                    context.router.push(InstrumentRoute(id: i.id));
                                  },
                                  cells: [
                                    DataCell(Text(i.name)),
                                    DataCell(
                                      Text('${hours.toStringAsFixed(2)}%',
                                          style: TextStyle(
                                              color: hours < 0 ? Colors.red : Colors.green)),
                                    ),
                                    DataCell(
                                      Text('${days7.toStringAsFixed(2)}%',
                                          style: TextStyle(
                                              color: days7 < 0 ? Colors.red : Colors.green)),
                                    ),
                                    DataCell(
                                      Text('${days30.toStringAsFixed(2)}%',
                                          style: TextStyle(
                                              color: days30 < 0 ? Colors.red : Colors.green)),
                                    ),
                                    DataCell(
                                      Text(i.candles.last.close.toMoney()),
                                    ),
                                  ]);
                            },
                          ).toList(),
                        ),
                      ),
                    ),
                  );
                });
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
    );
  }
}
