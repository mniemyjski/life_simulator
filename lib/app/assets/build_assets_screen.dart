import 'package:auto_route/auto_route.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_simulator/app/assets/cubit/build/build_asset_cubit.dart';
import 'package:life_simulator/app/assets/models/asset/asset_model.dart';
import 'package:life_simulator/app/assets/models/build/build_asset_model.dart';
import 'package:uuid/uuid.dart';

import '../../constants/locale_keys.g.dart';
import '../../utilities/utilities.dart';
import '../../widgets/widgets.dart';
import '../game/widget/app_bar_stats.dart';

class BuildAssetsScreen extends StatefulWidget {
  const BuildAssetsScreen({Key? key}) : super(key: key);

  @override
  State<BuildAssetsScreen> createState() => _BuildAssetsScreenState();
}

class _BuildAssetsScreenState extends State<BuildAssetsScreen> {
  final List<String> items = Enums.toList(ETypeAsset.values);

  List<int> _getDividersIndexes() {
    List<int> dividersIndexes = [];
    for (var i = 0; i < (items.length * 2) - 1; i++) {
      if (i.isOdd) {
        dividersIndexes.add(i);
      }
    }
    return dividersIndexes;
  }

  List<DropdownMenuItem<String>> _addDividersAfterItems(List<String> items) {
    List<DropdownMenuItem<String>> menuItems = [];
    for (var item in items) {
      menuItems.addAll(
        [
          DropdownMenuItem<String>(
            value: item,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                item,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          ),
          if (item != items.last)
            const DropdownMenuItem<String>(
              enabled: false,
              child: Divider(),
            ),
        ],
      );
    }
    return menuItems;
  }

  ETypeAsset selectedAssetType = ETypeAsset.apartment;
  int selectedTenant = 1;
  int selectedDuration = 60;

  resetSliders() {
    switch (selectedAssetType) {
      case ETypeAsset.apartment:
        selectedTenant = 1;
        selectedDuration = 60;
        break;
      case ETypeAsset.house:
        selectedTenant = 1;
        selectedDuration = 60;
        break;
      case ETypeAsset.tenement:
        selectedTenant = 10;
        selectedDuration = 60;
        break;
      case ETypeAsset.estate:
        selectedTenant = 30;
        selectedDuration = 60;
        break;
    }
  }

  int minTenant() {
    switch (selectedAssetType) {
      case ETypeAsset.apartment:
        return 1;
      case ETypeAsset.house:
        return 1;
      case ETypeAsset.tenement:
        return 10;
      case ETypeAsset.estate:
        return 30;
    }
  }

  int maxTenant() {
    switch (selectedAssetType) {
      case ETypeAsset.apartment:
        return 1;
      case ETypeAsset.house:
        return 2;
      case ETypeAsset.tenement:
        return 20;
      case ETypeAsset.estate:
        return 80;
    }
  }

  double baseCost() {
    switch (selectedAssetType) {
      case ETypeAsset.apartment:
        return 500000;
      case ETypeAsset.house:
        return 600000;
      case ETypeAsset.tenement:
        return 500000;
      case ETypeAsset.estate:
        return 600000;
    }
  }

  @override
  Widget build(BuildContext context) {
    double cost = (baseCost() * selectedTenant / (selectedDuration / 8)).toDouble();
    double value = (baseCost() * selectedTenant / 5) * 1.3;

    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppBarStats(),
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Row(
                children: [
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      isExpanded: true,
                      items: _addDividersAfterItems(items),
                      customItemsIndexes: _getDividersIndexes(),
                      customItemsHeight: 4,
                      value: Enums.toText(selectedAssetType),
                      onChanged: (value) {
                        setState(() {
                          selectedAssetType = Enums.toEnum(value as String, ETypeAsset.values);
                          resetSliders();
                        });
                      },
                      buttonDecoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,
                        ),
                        color: Colors.white,
                      ),
                      buttonHeight: 40,
                      buttonWidth: 180,
                      itemHeight: 40,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 8.0),
                      buttonElevation: 2,
                    ),
                  ),
                  Expanded(
                    child: Card(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${LocaleKeys.cost.tr()}:',
                              style: TextStyle(
                                  color: Theme.of(context).textTheme.bodyText1!.color,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '${cost.toMoney()}',
                              style: TextStyle(
                                  color: Theme.of(context).textTheme.bodyText1!.color,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${LocaleKeys.value.tr()}:',
                              style: TextStyle(
                                  color: Theme.of(context).textTheme.bodyText1!.color,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '${value.toMoney()}',
                              style: TextStyle(
                                  color: Theme.of(context).textTheme.bodyText1!.color,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      '${LocaleKeys.tenants.tr()}:',
                      style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1!.color,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Slider(
                        value: selectedTenant.toDouble(),
                        min: minTenant().toDouble(),
                        max: maxTenant().toDouble(),
                        divisions: maxTenant(),
                        onChanged: (double value) => setState(() => selectedTenant = value.toInt()),
                      ),
                    ),
                    Text(
                      '$selectedTenant',
                      style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1!.color,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      '${LocaleKeys.duration.tr()}:',
                      style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1!.color,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Slider(
                        value: selectedDuration.toDouble(),
                        min: 12,
                        max: 60,
                        divisions: 60,
                        onChanged: (double value) =>
                            setState(() => selectedDuration = value.toInt()),
                      ),
                    ),
                    Text(
                      '$selectedDuration months',
                      style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1!.color,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(4.0),
              child: Divider(
                color: Colors.white,
              ),
            ),
            Expanded(
              child: BlocBuilder<BuildAssetCubit, BuildAssetState>(
                builder: (context, state) {
                  return state.maybeWhen(
                      orElse: () => Container(),
                      loaded: (buildAssets) {
                        return ListView.builder(
                            itemCount: buildAssets.length,
                            itemBuilder: (context, index) {
                              final BuildAsset element = buildAssets[index];
                              return Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          style: Theme.of(context).textTheme.bodyText1,
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: '${LocaleKeys.address.tr()}: ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1!
                                                  .copyWith(fontWeight: FontWeight.bold),
                                            ),
                                            TextSpan(
                                              text: element.address,
                                            ),
                                          ],
                                        ),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          style: Theme.of(context).textTheme.bodyText1,
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: '${LocaleKeys.type.tr()}: ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1!
                                                  .copyWith(fontWeight: FontWeight.bold),
                                            ),
                                            TextSpan(
                                              text: Enums.toText(element.eTypeAsset),
                                            ),
                                          ],
                                        ),
                                      ),
                                      RichText(
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
                                              text: '${element.value.toInt().toString()}\$',
                                            ),
                                          ],
                                        ),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          style: Theme.of(context).textTheme.bodyText1,
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: '${LocaleKeys.datEnd.tr()}: ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1!
                                                  .copyWith(fontWeight: FontWeight.bold),
                                            ),
                                            TextSpan(
                                              text: element.datEnd!.onlyDateToString(),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                      });
                },
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                heroTag: null,
                onPressed: () => context.router.pop(),
                child: const FaIcon(FontAwesomeIcons.arrowRotateLeft),
              ),
              FloatingActionButton(
                heroTag: null,
                onPressed: () async {
                  final GlobalKey<FormState> formKey = GlobalKey();
                  var result = await showModalBottomSheet<String>(
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      String name = '';

                      return Padding(
                        padding: MediaQuery.of(context).viewInsets,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '${LocaleKeys.address.tr()}:',
                                style: TextStyle(
                                    color: Theme.of(context).textTheme.bodyText2!.color,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Form(
                                  key: formKey,
                                  child: TextFormField(
                                    validator: (v) {
                                      if ((v?.length ?? 0) < 2) return 'To short';
                                      if ((v?.length ?? 0) > 30) return 'To long';
                                      return null;
                                    },
                                    onChanged: (value) {
                                      name = value;
                                    },
                                  ),
                                ),
                              ),
                              CustomButton(
                                  onPressed: () {
                                    if (formKey.currentState!.validate()) context.router.pop(name);
                                  },
                                  child: Text(
                                    LocaleKeys.confirm.tr(),
                                  ))
                            ],
                          ),
                        ),
                      );
                    },
                  );

                  if (!mounted) return;

                  if (result != null) {
                    var uuid = const Uuid();
                    context.read<BuildAssetCubit>().build(
                          BuildAsset(
                            id: uuid.v1(),
                            address: result,
                            eTypeAsset: selectedAssetType,
                            tenantsMax: selectedTenant,
                            cost: cost,
                            value: value,
                          ),
                          selectedDuration,
                        );
                  }
                },
                child: const FaIcon(FontAwesomeIcons.plus),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
