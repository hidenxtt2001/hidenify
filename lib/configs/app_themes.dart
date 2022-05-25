import 'package:flutter/material.dart';
import 'package:streaming_app/configs/app_color.dart';
import 'package:streaming_app/configs/text_config.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColor.color3,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.color3,
    ),
    scaffoldBackgroundColor: AppColor.color6,
    colorScheme: const ColorScheme.light(),
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: AppColor.color3),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        splashFactory: InkRipple.splashFactory,
        elevation: 0,
        shadowColor: Colors.transparent,
        shape: const RoundedRectangleBorder(),
        primary: AppColor.color2,
        textStyle: TextConfig.kButtonHeader1,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        splashFactory: InkRipple.splashFactory,
        elevation: 0,
        backgroundColor: AppColor.color2,
        shadowColor: Colors.transparent,
        shape: const RoundedRectangleBorder(),
        primary: AppColor.color7,
        textStyle: TextConfig.kButtonHeader1,
      ),
    ),
  );

  static final ThemeData dartTheme = ThemeData(
    primaryColor: AppColor.color3,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.color3,
    ),
    colorScheme: const ColorScheme.dark(),
    scaffoldBackgroundColor: AppColor.color5,
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: AppColor.color3),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        splashFactory: InkRipple.splashFactory,
        elevation: 0,
        shadowColor: Colors.transparent,
        primary: AppColor.color2,
        textStyle: TextConfig.kButtonHeader1,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        splashFactory: InkRipple.splashFactory,
        elevation: 0,
        backgroundColor: AppColor.color2,
        shadowColor: Colors.transparent,
        shape: const RoundedRectangleBorder(),
        primary: AppColor.color7,
        textStyle: TextConfig.kButtonHeader1,
      ),
    ),
  );
}
