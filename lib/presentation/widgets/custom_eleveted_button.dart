import 'package:flutter/material.dart';

class CustomElevetedButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final TextStyle textStyle;
  final Widget? leadingIcon;

  const CustomElevetedButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
    required this.backgroundColor,
    required this.textStyle,
    this.leadingIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
           style: ElevatedButton.styleFrom(
                  backgroundColor: backgroundColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leadingIcon != null) ...[
              leadingIcon!,
              const SizedBox(width: 10),
            ],
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  buttonText,
                  style: textStyle,
                ))
          ],
        ));
  }
}
