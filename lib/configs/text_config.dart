import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:streaming_app/configs/app_color.dart';

class TextConfig {
  static TextStyle get kHeading1 => TextStyle(
        fontSize: 57.33.sp,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get kHeading2 => TextStyle(
        fontSize: 47.78.sp,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get kHeading3 => TextStyle(
        fontSize: 39.81.sp,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get kHeading4 => TextStyle(
        fontSize: 33.18.sp,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get kHeading5 => TextStyle(
        fontSize: 27.65.sp,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get kHeading6 => TextStyle(
        fontSize: 23.04.sp,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get kBodyLarge => TextStyle(
        fontSize: 19.2.sp,
        fontWeight: FontWeight.normal,
      );
  static TextStyle get kBodyRegular => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.normal,
      );
  static TextStyle get kBodySmall => TextStyle(
        fontSize: 13.3.sp,
        fontWeight: FontWeight.normal,
      );
  static TextTheme get _textTheme => TextTheme(
        headlineLarge: kHeading1,
        headlineMedium: kHeading2,
        headlineSmall: kHeading3,
        titleLarge: kHeading4,
        titleMedium: kHeading5,
        titleSmall: kHeading6,
        bodyLarge: kBodyLarge,
        bodyMedium: kBodyRegular,
        bodySmall: kBodySmall,
      );
  static TextTheme get lightTheme => _textTheme.apply(
        bodyColor: AppColor.color1,
        displayColor: AppColor.color1,
      );
  static TextTheme get dartTheme => _textTheme.apply(
        bodyColor: AppColor.color4,
        displayColor: AppColor.color4,
      );
}
