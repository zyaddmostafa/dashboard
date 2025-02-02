import 'package:flutter/material.dart';

class Styles {
  static TextStyle styleRegular16(context) {
    return TextStyle(
      fontSize: getFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
      color: Color(0xff064061),
    );
  }

  static TextStyle styleMedium16(context) {
    return TextStyle(
      fontSize: getFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
      color: Color(0xff064061),
    );
  }

  static TextStyle styleSemibold16(context) {
    return TextStyle(
      fontSize: getFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600,
      color: Color(0xff064061),
    );
  }

  static TextStyle styleSemibold20(context) {
    return TextStyle(
      fontSize: getFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w600,
      color: Color(0xff064061),
    );
  }

  static TextStyle styleRegular12(context) {
    return TextStyle(
      fontSize: getFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
      color: Color(0xff064061),
    );
  }

  static TextStyle styleRegular14(context) {
    return TextStyle(
      fontSize: getFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
      color: Color(0xffAAAAAA),
    );
  }

  static TextStyle styleSemibold24(context) {
    return TextStyle(
      fontSize: getFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w600,
      color: Color(0xff4EB7F2),
    );
  }

  static TextStyle styleBold16(context) {
    return TextStyle(
      fontSize: getFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w700,
      color: Color(0xff4EB7F2),
    );
  }

  static TextStyle styleSemibold18(context) {
    return TextStyle(
      fontSize: getFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w600,
      color: Color(0xff4EB7F2),
    );
  }

  static TextStyle styleMedium20(context) {
    return TextStyle(
      fontSize: getFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w500,
      color: Color(0xffFFFFFF),
    );
  }
}

double getFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveTextSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;

  return responsiveTextSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.of(context).size.width;

  if (width < 600) {
    return width / 550;
  } else if (width < 1200) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
