import 'package:chat_app/core/configs/app_router.dart';
import 'package:chat_app/core/utils/app_color.dart';
import 'package:chat_app/core/utils/app_constants.dart';
import 'package:chat_app/core/utils/primary_font.dart';
import 'package:chat_app/core/utils/validator.dart';
import 'package:chat_app/presentation/bloc/blocs.dart';
import 'package:chat_app/presentation/screens/sign_in/widgets/sign_in_with_google.dart';
import 'package:chat_app/presentation/widgets/custom_text_form_field.dart';
import 'package:chat_app/presentation/widgets/dialog_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import '../../../widgets/custom_eleveted_button.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  final FocusNode _emailNode = FocusNode();
  final FocusNode _passwordNode = FocusNode();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final ValueNotifier<bool> _obscure = ValueNotifier(true);

  void _nextRequest(FocusNode? next) {
    _emailNode.unfocus();
    _passwordNode.unfocus();

    if (next == null) {
      hanldeSignin();
    } else {
      next.requestFocus();
    }

    setState(() {});
  }

  void hanldeSignin() {
    if (formkey.currentState!.validate() &&
        _emailController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty) {
      Navigator.of(context)
          .pushNamedAndRemoveUntil(homeScreen, (route) => false);
    }
  }

  void hanldeNotificationDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return const DialogWidget();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 20),
          Expanded(
            child: CustomTextFormField(
                obscureText: false,
                focusNode: _emailNode,
                onFieldSubmitted: (_) => _nextRequest(_emailNode),
                lableText: emailText,
                textEditingController: _emailController,
                validator: emailValidator),
          ),
          Expanded(
            child: CustomTextFormField(
              obscureText: _obscure.value,
              focusNode: _passwordNode,
              onFieldSubmitted: (_) => _nextRequest(_passwordNode),
              lableText: passwordText,
              textEditingController: _passwordController,
              validator: passwordValidator,
              showSuffixIcon: true,
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _obscure.value = !_obscure.value;
                    });
                  },
                  icon: Icon(
                    _obscure.value
                        ? FontAwesomeIcons.eyeSlash
                        : FontAwesomeIcons.eye,
                    size: 16,
                  )),
            ),
          ),
          Align(
              alignment: Alignment.topRight,
              child: TextButton(
                  onPressed: hanldeNotificationDialog,
                  child: Text(forgotPasswordText,
                      style: PrimaryFont.medium(12)
                          .copyWith(color: kColorOrange)))),
          Flexible(
            fit: FlexFit.loose,
            child: CustomElevetedButton(
                buttonText: loginText,
                onPressed: hanldeSignin,
                backgroundColor: kColorRoyalBule,
                textStyle: PrimaryFont.bold(16).copyWith(color: kColorWhite)),
          ),
          Flexible(
            child: Center(
              child: Text(
                chooseLoginText,
                style: PrimaryFont.regular(14),
              ),
            ),
          ),
          BlocBuilder<UserCubit, UserState>(
            builder: (context, state) {
              return Flexible(
                child: CustomElevetedButton(
                    buttonText: googleText,
                    leadingIcon: SvgPicture.asset(googleIcon),
                    onPressed: () {
                      signInWithGoogle().then((result) {
                        print("result: $result");
                        context.read<UserCubit>().initializeUser();
                        if (result != null) {
                          Navigator.of(context).pushNamed(homeScreen);
                        }
                      });
                    },
                    backgroundColor: kColorWhite,
                    textStyle:
                        PrimaryFont.regular(14).copyWith(color: kColorBlack)),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(noAccountText, style: PrimaryFont.regular(14)),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(signUpScreen);
                  },
                  child: Text(
                    signUpText,
                    style:
                        PrimaryFont.medium(14).copyWith(color: kColorRoyalBule),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
