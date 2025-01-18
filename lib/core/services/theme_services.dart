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
  // canvasColor: const Color(0xffFAEFEF),
  // bottomAppBarTheme: const BottomAppBarTheme(
  //   color: Color(0xffFAFAFA)
  // ),
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
  // popupMenuTheme: const PopupMenuThemeData(
  //   surfaceTintColor: Colors.white,
  //   color: Colors.white
  // ),
  // expansionTileTheme: const ExpansionTileThemeData(
  //   backgroundColor: Colors.white,
  //   textColor: Color(0xff212121)
  // ),
);

// final ThemeData darkTheme = ThemeData(
//   brightness: Brightness.dark,
//   popupMenuTheme: const PopupMenuThemeData(
//     surfaceTintColor: Color(0xff1F222A),
//     color: Color(0xff1F222A)
//   ),
//   scaffoldBackgroundColor: const Color(0xff181A20),
//   appBarTheme: const AppBarTheme(
//     backgroundColor: Color(0xff181A20),
//   ),
//   radioTheme: const RadioThemeData(
//     fillColor: WidgetStatePropertyAll(Color(0xffCD5C5C))
//   ),
//   switchTheme: const SwitchThemeData(
//     thumbColor: WidgetStatePropertyAll(
//       Colors.white
//     ),
//     trackColor: WidgetStatePropertyAll(
//       Color(0xffCD5C5C)
//     ),
//   ),
//   dialogBackgroundColor: const Color(0xff35383F),
//   inputDecorationTheme: const InputDecorationTheme(
//     filled: true,
//     fillColor: Color(0xff1F222A),
//   ),
//   bottomAppBarTheme: BottomAppBarTheme(
//     color: const Color(0xff181A20).withOpacity(0.85)
//   ),
//   canvasColor: const Color(0xff181A20),
//   cardColor: const Color(0xff1F222A),
//   dialogTheme: const DialogTheme(
//     backgroundColor: Color(0xff1F222A),
//     surfaceTintColor: Color(0xff1F222A),
//   ),
//   textTheme: const TextTheme(
//     bodyLarge: TextStyle(color: Colors.white),
//     bodyMedium: TextStyle(color: Colors.white70),
//     bodySmall: TextStyle(color: Colors.white)
//   ),
//   bottomSheetTheme: const BottomSheetThemeData(
//     backgroundColor: Color(0xff212121)
//   ),
//   dividerTheme: const DividerThemeData(
//     color:  Color(0xff35383F),
//   ),
//   dividerColor: const Color(0xff35383F),
//   iconTheme: const IconThemeData(
//     color: Colors.white
//   ),
//   expansionTileTheme: const ExpansionTileThemeData(
//     backgroundColor: Color(0xff1F222A),
//     textColor: Colors.white
//   )
// );
