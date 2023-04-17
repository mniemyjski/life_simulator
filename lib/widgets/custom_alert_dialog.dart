import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

Future<bool> customAlertDialog({
  required BuildContext context,
  required String title,
  required String desc,
}) async {
  bool? result = await showDialog<bool>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: Text(desc),
        actions: [
          TextButton(
            child: Text(LocaleKeys.no.tr()),
            onPressed: () => context.router.pop(false),
          ),
          TextButton(
            child: Text(LocaleKeys.yes.tr()),
            onPressed: () => context.router.pop(true),
          ),
        ],
      );
    },
  );

  return result ?? false;
}
