import 'package:chat_app/core/utils/app_color.dart';
import 'package:chat_app/core/utils/primary_font.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String lableText;
  final bool showSuffixIcon;
  final Widget? suffixIcon;
  final VoidCallback? onPressed;
  final TextEditingController? textEditingController;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  final bool obscureText;
  final Function(String)? onFieldSubmitted;
  final Widget? prefixIcon;
  final double? borderRadius;
  final double? padding;

  const CustomTextFormField(
      {Key? key,
      required this.lableText,
      this.showSuffixIcon = false,
      this.suffixIcon,
      this.onPressed,
      this.textEditingController,
      this.validator,
      this.focusNode,
      this.obscureText = true,
      this.onFieldSubmitted,
      this.prefixIcon,
      this.borderRadius,
      this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding ?? 16),
      child: TextFormField(
        validator: validator,
        obscureText: obscureText,
        controller: textEditingController,
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
            prefixIcon: prefixIcon,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 12),
                borderSide: const BorderSide(color: kColorGreen)),
            suffixIcon: showSuffixIcon ? suffixIcon : null,
            label: Text(
              lableText,
              style: PrimaryFont.regular(14).copyWith(color: kColorGray),
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 12))),
      ),
    );
  }
}
