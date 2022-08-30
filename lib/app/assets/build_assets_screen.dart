import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:faker/faker.dart';
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
import 'widgets/asset_build_element.dart';

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
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Expanded(
              child: BlocBuilder<BuildAssetCubit, BuildAssetState>(
                builder: (context, state) {
                  return state.maybeWhen(
                      orElse: () => Container(),
                      loaded: (buildAssets) {
                        if (buildAssets.isEmpty) {
                          return Center(
                            child: Text(
                              LocaleKeys.queueIsEmpty.tr(),
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          );
                        }

                        return ListView.builder(
                            itemCount: buildAssets.length,
                            itemBuilder: (context, index) {
                              final BuildAsset element = buildAssets[index];
                              return AssetBuildElement(element);
                            });
                      });
                },
              ),
            ),
            const SizedBox(height: 80),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          heroTag: null,
          onPressed: () async {
            final GlobalKey<FormState> formKey = GlobalKey();
            showModalBottomSheet<String>(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(8.0))),
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) {
                final TextEditingController controller = TextEditingController(text: '');

                return Padding(
                  padding: MediaQuery.of(context).viewInsets,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Row(
                            children: [
                              Expanded(
                                child: Form(
                                  key: formKey,
                                  child: TextFormField(
                                    style: const TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      labelText: LocaleKeys.address.tr(),
                                      labelStyle: const TextStyle(color: Colors.white),
                                      contentPadding: const EdgeInsets.all(12),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(4),
                                        borderSide: const BorderSide(
                                          color: Colors.white38,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(4),
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    controller: controller,
                                    validator: (v) {
                                      if (v == null || v.isEmpty) {
                                        return 'Can\'t be empty';
                                      }
                                      if (v.length < 4) {
                                        return 'Too short';
                                      }
                                      if (v.length > 30) {
                                        return 'Too short';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              Card(
                                  child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          controller.text = faker.address.streetAddress();
                                        });
                                      },
                                      icon: const Icon(FontAwesomeIcons.shuffle)))
                            ],
                          ),
                        ),
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
                                      selectedAssetType =
                                          Enums.toEnum(value as String, ETypeAsset.values);
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
                                    onChanged: (double value) =>
                                        setState(() => selectedTenant = value.toInt()),
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
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: CustomButton(
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  var uuid = const Uuid();

                                  String? test = context.read<BuildAssetCubit>().build(
                                        BuildAsset(
                                          id: uuid.v1(),
                                          address: controller.text,
                                          eTypeAsset: selectedAssetType,
                                          tenantsMax: selectedTenant,
                                          cost: cost,
                                          value: value,
                                        ),
                                        selectedDuration,
                                      );
                                  if (test != null) {
                                    BotToast.showText(
                                        text: test, align: const Alignment(0.1, 0.05));
                                  } else {
                                    context.router.pop();
                                  }
                                }
                              },
                              child: Text(
                                LocaleKeys.confirm.tr(),
                              )),
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: const FaIcon(FontAwesomeIcons.plus),
        ),
      ),
    );
  }
}
