import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:giff_dialog/giff_dialog.dart';

import '../res/colors.dart';

class AlertDialogBoxes {

  // Exit Alert Dialog :
  static void exitDialog(BuildContext context) async {
    showDialog(
        context: context,
        builder: (_) => AssetGiffDialog(
              image: Image.asset(
                "assets/images/exit_app.gif",
                height: 150,
                fit: BoxFit.cover,
              ),
              title: const Text(
                'Exit App',
                style: TextStyle(
                    fontSize: 22.0, fontWeight: FontWeight.w600),
              ),
              description: const Text(
                'Are you sure you want to exit the application?',
                style: TextStyle(
                    fontSize: 14.0,
                ),
                textAlign: TextAlign.center,
              ),
              entryAnimation: EntryAnimation.normal,
              buttonOkText: const Text(
                'Yes',
                style: TextStyle(
                    fontSize: 16.0, color: AppColors.secondary),
              ),
              buttonOkColor: AppColors.primary,
              buttonCancelText: const Text(
                'No',
                style:
                TextStyle(fontSize: 16.0, color: AppColors.primary),
              ),
              buttonCancelColor: AppColors.secondary,
              onCancelButtonPressed: () {
                Navigator.pop(context);
              },
              onOkButtonPressed: () {
                SystemNavigator.pop();
              },
            ));
  }
}
