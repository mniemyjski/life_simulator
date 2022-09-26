import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
  late ETypeAsset selectedAssetType;
  late int selectedMultipleValue;
  late int selectedTenant;
  late int minTenant;
  late int maxTenant;
  late int baseCost;
  late int duration;

  resetSliders() {
    switch (selectedAssetType) {
      case ETypeAsset.apartment:
        selectedTenant = 1;
        minTenant = 1;
        maxTenant = 1;
        baseCost = 80000;
        duration = 12;
        break;
      case ETypeAsset.house:
        selectedTenant = 1;
        minTenant = 1;
        maxTenant = 2;
        baseCost = 100000;
        duration = 24;
        break;
      case ETypeAsset.tenement:
        selectedTenant = 10;
        minTenant = 10;
        maxTenant = 30;
        baseCost = 80000;
        duration = 24;
        break;
      case ETypeAsset.estate:
        selectedTenant = 30;
        minTenant = 30;
        maxTenant = 80;
        baseCost = 100000;
        duration = 24;
        break;
    }
  }

  @override
  void initState() {
    selectedAssetType = ETypeAsset.apartment;
    selectedMultipleValue = 1;
    resetSliders();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double cost = (baseCost * selectedTenant * selectedMultipleValue).toDouble();
    double value = cost * 1.3;

    return Container(
      color: Colors.black.withOpacity(0.5),
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
                              '${LocaleKeys.duration.tr()}:',
                              style: TextStyle(
                                  color: Theme.of(context).textTheme.bodyText1!.color,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '$duration months',
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
                        min: minTenant.toDouble(),
                        max: maxTenant.toDouble(),
                        divisions: maxTenant,
                        onChanged: maxTenant == 1
                            ? null
                            : (double value) => setState(() => selectedTenant = value.toInt()),
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
                      '${LocaleKeys.valueMultiplier.tr()}:',
                      style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1!.color,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Slider(
                        value: selectedMultipleValue.toDouble(),
                        min: 1,
                        max: 10,
                        divisions: 10,
                        onChanged: (double value) =>
                            setState(() => selectedMultipleValue = value.toInt()),
                      ),
                    ),
                    Text(
                      '$selectedMultipleValue',
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
                      String? toast = context.read<BuildAssetCubit>().build(
                            BuildAsset(
                              address: controller.text,
                              eTypeAsset: selectedAssetType,
                              tenantsMax: selectedTenant,
                              cost: cost,
                              value: value,
                            ),
                            duration,
                          );
                      if (toast != null) {
                        BotToast.showText(text: toast, align: const Alignment(0.1, 0.05));
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
