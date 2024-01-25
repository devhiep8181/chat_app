import 'package:chat_app/core/utils/utils.dart';
import 'package:flutter/material.dart';

class CustomDecoratedContainer extends StatelessWidget {
  final Color? colorBoxDecoration;
  final double? topLeftRadius;
  final double? topRightRadius;
  final Widget? widget;
  final Gradient? gradient;
  const CustomDecoratedContainer({
    Key? key,
    this.colorBoxDecoration,
    this.topLeftRadius,
    this.topRightRadius,
    this.gradient,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: gradient,
            color: colorBoxDecoration ?? kColorBlack,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(topLeftRadius ?? 60),
              topRight: Radius.circular(topRightRadius ?? 60),
            )),
        child: Padding(
          padding:const EdgeInsets.all(8.0),
          child: widget
        ));
  }
}
