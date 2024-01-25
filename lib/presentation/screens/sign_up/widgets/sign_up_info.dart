import 'package:chat_app/core/utils/utils.dart';
import 'package:flutter/material.dart';

class SignUpInfo extends StatelessWidget {
  const SignUpInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(signUpText, style: PrimaryFont.bold(24).copyWith(color: kColorWhite))
      ],
    );
  }
}
