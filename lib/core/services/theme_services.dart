import 'package:flutter/material.dart';
import 'package:how_much_app/core/resources/colors_x.dart';


final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  radioTheme: const RadioThemeData(
    fillColor: WidgetStatePropertyAll(Color(0xffCD5C5C))
  ),
  scaffoldBackgroundColor: ColorsX.backgroundColor,
  appBarTheme: AppBarTheme(
    backgroundColor: ColorsX.backgroundColor,
  ),
  progressIndicatorTheme: ProgressIndicatorThemeData(
    color: ColorsX.primaryColor,
  ),
  switchTheme: const SwitchThemeData(
    thumbColor: WidgetStatePropertyAll(
      Colors.white
    ),
  ),
  cardColor: Colors.white,
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: Colors.white
  ),
  dividerTheme: const DividerThemeData(
    color: Color(0xffEEEEEE)
  ),
  iconTheme: IconThemeData(
    color: ColorsX.textColor
  ),
);