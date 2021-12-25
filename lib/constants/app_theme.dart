import 'package:flutter/material.dart';
import 'app_color.dart';
import 'app_font_family.dart';

final ThemeData themeData=ThemeData(
    fontFamily:AppFontFamily.anton,
    brightness: Brightness.light,
    primaryColor: AppColor.monochromatic[100],
    primaryColorBrightness: Brightness.light,
    colorScheme: ColorScheme.fromSwatch(
        primarySwatch: MaterialColor(AppColor.monochromatic[100]!.value,AppColor.monochromatic))
        .copyWith(secondary: AppColor.monochromatic[100])
);

final ThemeData darkThemeData=ThemeData(
    fontFamily:AppFontFamily.anton,
    brightness: Brightness.dark,
    primaryColor: AppColor.monochromatic[700],
    primaryColorBrightness: Brightness.dark,
    colorScheme: ColorScheme.fromSwatch(
        primarySwatch: MaterialColor(AppColor.monochromatic[700]!.value,AppColor.monochromatic))
        .copyWith(secondary: AppColor.monochromatic[700])

);