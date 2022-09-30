import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:richeable/app/business/cubit/businesses/businesses_cubit.dart';
import 'package:richeable/app/business/models/business/business_model.dart';
import 'package:richeable/utilities/utilities.dart';
import 'package:richeable/widgets/custom_button.dart';

import '../../../constants/constants.dart';

class BusinessCreator extends StatefulWidget {
  const BusinessCreator({Key? key}) : super(key: key);

  @override
  State<BusinessCreator> createState() => _BusinessCreatorState();
}

class _BusinessCreatorState extends State<BusinessCreator> {
  late TextEditingController controller;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    controller = TextEditingController(text: '');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.5),
      padding: MediaQuery.of(context).viewInsets,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
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
                  String? toast =
                      context.read<BusinessesCubit>().create(Business.builder(controller.text));

                  if (toast != null) {
                    BotToast.showText(text: toast, align: const Alignment(0.1, 0.05));
                  } else {
                    context.router.pop();
                  }
                }
              },
              child: Text(LocaleKeys.create.tr()),
            ),
          ],
        ),
      ),
    );
  }
}
