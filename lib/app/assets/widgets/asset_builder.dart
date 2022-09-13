import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uuid/uuid.dart';

import '../../../constants/constants.dart';
import '../../../utilities/utilities.dart';
import '../../../widgets/custom_drop_down_button.dart';
import '../../../widgets/widgets.dart';
import '../cubit/build/build_asset_cubit.dart';
import '../models/asset/asset_model.dart';
import '../models/build/build_asset_model.dart';

class AssetBuilder extends StatefulWidget {
  const AssetBuilder({Key? key}) : super(key: key);

  @override
  State<AssetBuilder> createState() => _AssetBuilderState();
}

class _AssetBuilderState extends State<AssetBuilder> {
  final List<String> items = Enums.toList(ETypeAsset.values);
  final TextEditingController controller = TextEditingController(text: '');
  final GlobalKey<FormState> formKey = GlobalKey();
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
                  CustomDropDownButton(
                    items: items,
                    onChanged: (value) {
                      setState(() {
                        selectedAssetType = Enums.toEnum(value, ETypeAsset.values);
                        resetSliders();
                      });
                    },
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
                        BotToast.showText(text: test, align: const Alignment(0.1, 0.05));
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
  }
}
