import 'package:chat_app/core/utils/app_color.dart';
import 'package:chat_app/presentation/screens/sign_in/widgets/sign_in_form.dart';
import 'package:chat_app/presentation/screens/sign_in/widgets/sign_in_info.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(gradient: kCyanGradient),
        child: Stack(
          children: [
            Column(
              children: [
                const Spacer(),
                const Expanded(
                  child: SignInInfo(),
                ),
                const Spacer(),
                Expanded(
                    flex: 8,
                    child: Container(
                        decoration: const BoxDecoration(
                            color: kColorWhite,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60),
                              topRight: Radius.circular(60),
                            )),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: SignInForm(),
                        ))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
