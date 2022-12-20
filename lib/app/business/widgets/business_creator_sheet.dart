import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:richeable/app/business/models/business/business_model.dart';
import 'package:richeable/app/date/cubit/date_cubit.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:richeable/widgets/widgets.dart';

import '../../../constants/constants.dart';
import '../cubit/businesses_list/businesses_cubit.dart';

class BusinessCreatorSheet extends StatefulWidget {
  const BusinessCreatorSheet({Key? key}) : super(key: key);

  @override
  State<BusinessCreatorSheet> createState() => _BusinessCreatorSheetState();
}

class _BusinessCreatorSheetState extends State<BusinessCreatorSheet> {
  late TextEditingController controller;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    controller = TextEditingController(text: '');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomSheetDesign(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.bodyText2,
              children: <TextSpan>[
                TextSpan(
                  text: '${LocaleKeys.cost.tr()}: ',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: 5000.0.toMoney()),
              ],
            ),
          ),
          const SizedBox(height: 16),
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
          CustomButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                context.read<DateCubit>().state.whenOrNull(loaded: (date) {
                  String? toast = context.read<BusinessesCubit>().create(Business(
                        name: controller.text,
                        dateCre: date,
                      ));

                  if (toast != null) {
                    BotToast.showText(text: toast, align: const Alignment(0.1, 0.05));
                  } else {
                    context.router.pop();
                  }
                });
              }
            },
            child: Text(LocaleKeys.create.tr()),
          ),
        ],
      ),
    );
  }
}
