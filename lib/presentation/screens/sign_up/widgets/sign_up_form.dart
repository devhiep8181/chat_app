import 'package:chat_app/core/configs/app_router.dart';
import 'package:chat_app/presentation/widgets/custom_text_form_field.dart';
import 'package:chat_app/presentation/widgets/dialog_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/utils/utils.dart';
import '../../../widgets/custom_eleveted_button.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  final FocusNode _nameNode = FocusNode();
  final FocusNode _emailNode = FocusNode();
  final FocusNode _passwordNode = FocusNode();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final ValueNotifier<bool> _obscure = ValueNotifier(true);

  void _nextRequest(FocusNode? next) {
    _nameNode.unfocus();
    _emailNode.unfocus();
    _passwordNode.unfocus();

    if (next == null) {
      hanldeSignup();
    } else {
      next.requestFocus();
    }

    setState(() {});
  }

  void hanldeSignup() {
    if (formkey.currentState!.validate() &&
        _nameController.text.isNotEmpty &&
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
                focusNode: _nameNode,
                onFieldSubmitted: (_) => _nextRequest(_nameNode),
                lableText: nameText,
                textEditingController: _nameController,
                validator: nameValidator),
          ),
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
          Flexible(
            fit: FlexFit.loose,
            child: CustomElevetedButton(
                buttonText: signUpText,
                onPressed: hanldeSignup,
                backgroundColor: kColorRoyalBule,
                textStyle: PrimaryFont.bold(16).copyWith(color: kColorWhite)),
          ),
          //tìm cách giải quyết vấn đề: muốn giãn cách giữa các widget mà không set giá trị cứng
          const SizedBox(height: 32),
          Flexible(
            fit: FlexFit.loose,
            child: CustomElevetedButton(
                buttonText: backText,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                backgroundColor: kColorWhite,
                textStyle:
                    PrimaryFont.regular(14).copyWith(color: kColorBlack)),
          ),
        ],
      ),
    );
  }
}
