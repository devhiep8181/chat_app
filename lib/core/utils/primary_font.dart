import 'package:flutter/material.dart';

class PrimaryFont {
  static String fontFamily = "Poppins";

  static TextStyle thin(double size) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w100,
      fontSize: size
    );
  }

  static TextStyle regular(double size) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontSize: size
    );
  }

  static TextStyle medium(double size) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      fontSize: size
    );
  }

  static TextStyle bold(double size) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      fontSize: size
    );
  }
}
