import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:richeable/app/business/cubit/research_product/research_product_cubit.dart';
import 'package:richeable/app/business/models/product/product_model.dart';
import 'package:richeable/constants/constants.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:richeable/widgets/widgets.dart';

class ResearchCreateSheet extends StatefulWidget {
  final int businessId;
  const ResearchCreateSheet({Key? key, required this.businessId}) : super(key: key);

  @override
  State<ResearchCreateSheet> createState() => _ResearchCreateSheetState();
}

class _ResearchCreateSheetState extends State<ResearchCreateSheet> {
  late TextEditingController controller;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  ETypeProduct eTypeProduct = ETypeProduct.food;
  ETypeQuality eTypeQuality = ETypeQuality.low;
  double cost = 50000;
  double months = 1;

  @override
  void initState() {
    controller = TextEditingController(text: '');
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomSheetDesign(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text('${LocaleKeys.research.tr()}:'),
          ),
          Form(
            key: formKey,
            child: TextFormField(
              keyboardType: TextInputType.text,
              textCapitalization: TextCapitalization.sentences,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: LocaleKeys.name.tr(),
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
                  return LocaleKeys.cantBeEmpty.tr();
                }
                if (v.length < 4) {
                  return LocaleKeys.tooShort.tr();
                }
                return null;
              },
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                  child: CustomDropDownButton(
                items: Enums.toList(ETypeProduct.values),
                initialValue: Enums.toText(eTypeProduct),
                onChanged: (v) =>
                    setState(() => eTypeProduct = Enums.toEnum(v, ETypeProduct.values)),
              )),
            ],
          ),
          const SizedBox(height: 8),
          Text('${LocaleKeys.cost.tr()}:'),
          CustomSlider(
            value: cost,
            min: 50000,
            max: 1000000,
            division: 10,
            txt: '${cost.toMoney()}',
            onChanged: (double v) => setState(() => cost = v),
          ),
          const SizedBox(height: 8),
          Text('${LocaleKeys.months.tr()}:'),
          CustomSlider(
            value: months,
            min: 1,
            max: 12,
            division: 12,
            txt: '${months.toInt()}',
            onChanged: (double v) => setState(() => months = v),
          ),
          const SizedBox(height: 8),
          CustomButton(
            onPressed: () async {
              String? toast = await context.read<ResearchProductCubit>().add(
                  name: controller.text,
                  cost: cost,
                  eTypeProduct: eTypeProduct,
                  months: months.toInt());
              if (toast != null) {
                BotToast.showText(text: toast, align: const Alignment(0.1, 0.05));
              }
              context.router.pop();
            },
            child: Text(
              LocaleKeys.create.tr(),
            ),
          ),
        ],
      ),
    );
  }
}
