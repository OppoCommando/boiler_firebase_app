import 'package:flutter/material.dart';
import 'app_color.dart';
import 'app_font_family.dart';

final ThemeData themeData=ThemeData(
    fontFamily:AppFontFamily.anton,
    brightness: Brightness.light,
    primaryColor: AppColor.cyan[100],
    primaryColorBrightness: Brightness.light,
    colorScheme: ColorScheme.fromSwatch(
        primarySwatch: MaterialColor(AppColor.cyan[100]!.value,AppColor.cyan))
        .copyWith(secondary: AppColor.cyan[100])
);

final ThemeData darkThemeData=ThemeData(
    fontFamily:AppFontFamily.anton,
    brightness: Brightness.light,
    primaryColor: AppColor.cyan[700],
    primaryColorBrightness: Brightness.light,
    colorScheme: ColorScheme.fromSwatch(
        primarySwatch: MaterialColor(AppColor.cyan[700]!.value,AppColor.cyan))
        .copyWith(secondary: AppColor.cyan[700])

);