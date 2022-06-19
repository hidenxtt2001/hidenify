import 'package:flutter/material.dart';
import 'package:streaming_app/configs/app_color.dart';
import 'package:streaming_app/configs/text_config.dart';
import 'package:streaming_app/utils/extension.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    primarySwatch: AppColor.color3.convertToMaterialColor(),
    fontFamily: "SanFranciscoDisplay",
    primaryColor: AppColor.color4,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.color4,
    ),
    scaffoldBackgroundColor: AppColor.color4,
    backgroundColor: AppColor.color4,
    colorScheme: const ColorScheme.light(
      primary: AppColor.color4,
      onPrimary: AppColor.color4,
      secondary: AppColor.color2,
      onSecondary: AppColor.color1,
    ),
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: AppColor.color2),
    textTheme: TextConfig.lightTheme,
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ElevatedButton.styleFrom(
    //     splashFactory: InkRipple.splashFactory,
    //     elevation: 0,
    //     shadowColor: Colors.transparent,
    //     shape: const RoundedRectangleBorder(),
    //     primary: AppColor.color2,
    //     textStyle: TextConfig.kBodyLarge,
    //   ),
    // ),
    // textButtonTheme: TextButtonThemeData(
    //   style: TextButton.styleFrom(
    //     splashFactory: InkRipple.splashFactory,
    //     elevation: 0,
    //     shadowColor: Colors.transparent,
    //     shape: const RoundedRectangleBorder(),
    //     primary: AppColor.color4,
    //     textStyle: TextConfig.kBodyLarge,
    //   ),
    // ),
  );

  static final ThemeData dartTheme = ThemeData(
    primarySwatch: AppColor.color3.convertToMaterialColor(),
    fontFamily: "SanFranciscoDisplay",
    primaryColor: AppColor.color2,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.color2,
    ),
    colorScheme: const ColorScheme.dark(
      primary: AppColor.color2,
      onPrimary: AppColor.color1,
      secondary: AppColor.color4,
      onSecondary: AppColor.color4,
    ),
    scaffoldBackgroundColor: AppColor.color2,
    backgroundColor: AppColor.color4,
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: AppColor.color4),
    textTheme: TextConfig.dartTheme,
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ElevatedButton.styleFrom(
    //     splashFactory: InkRipple.splashFactory,
    //     elevation: 0,
    //     shadowColor: Colors.transparent,
    //     primary: AppColor.color4,
    //     textStyle: TextConfig.kBodyLarge,
    //   ),
    // ),
    // textButtonTheme: TextButtonThemeData(
    //   style: TextButton.styleFrom(
    //     splashFactory: InkRipple.splashFactory,
    //     elevation: 0,
    //     backgroundColor: AppColor.color2,
    //     shadowColor: Colors.transparent,
    //     shape: const RoundedRectangleBorder(),
    //     primary: AppColor.color4,
    //     textStyle: TextConfig.kBodyLarge,
    //   ),
    // ),
  );
}
