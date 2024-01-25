import 'package:flutter/material.dart';
import '../../../../core/utils/utils.dart';

class SignInInfo extends StatelessWidget {
  const SignInInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(helloText, style: PrimaryFont.bold(24).copyWith(color: kColorWhite)),
        Text(descriptionHelloText,
            style: PrimaryFont.regular(14).copyWith(color: kColorWhite)),
      ],
    );
  }
}
