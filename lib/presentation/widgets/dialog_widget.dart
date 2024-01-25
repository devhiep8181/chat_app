import 'package:chat_app/core/utils/app_constants.dart';
import 'package:chat_app/core/utils/primary_font.dart';
import 'package:flutter/material.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      title: Text(notificationText, style: PrimaryFont.medium(18)),
      content: Text(dialogUpdateText, style: PrimaryFont.regular(16)),
    );
  }
}
