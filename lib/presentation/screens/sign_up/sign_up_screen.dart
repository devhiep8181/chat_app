import 'package:chat_app/core/utils/app_color.dart';
import 'package:chat_app/presentation/screens/sign_up/widgets/sign_up_form.dart';
import 'package:chat_app/presentation/screens/sign_up/widgets/sign_up_info.dart';
import 'package:chat_app/presentation/widgets/custom_decorated_container.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         width: double.infinity,
        decoration: const BoxDecoration(
          gradient: kCyanGradient),
        child:const Column(
          children: [
            Spacer(),
            Expanded(
              child: SignUpInfo(),
            ),
            Spacer(),
            Expanded(flex: 8, child: CustomDecoratedContainer(widget: SignUpForm()) ),
          ],
        ),
      ),
    );
  }
}
