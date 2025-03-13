import 'package:flutter/material.dart';
import 'package:how_much_app/core/di/injectable.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
import 'package:how_much_app/core/resources/styles_x.dart';
import 'package:how_much_app/core/routes/routes.gr.dart';

class HAppBars {

  AppBar authBar(
    c
  ) {
    return AppBar(
      elevation: 0,
      scrolledUnderElevation: 0,
      leading: InkWell(
        onTap: () {
          Navigator.pop(c);
        },
        child: Icon(
          Icons.arrow_back,
          color: ColorsX.textColor,
        ),
      ),
      centerTitle: true,
    );
  }

  AppBar mainAppBar(
    {
      title,
      w,
      hideIcon = false,
      Color? bgnColor
    }
  ) {
    var context = si<AppRouter>().navigatorKey.currentContext;
    return AppBar(
      elevation: 0,
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: false,
      leading:  hideIcon ?
      null:
      InkWell(
        onTap: () {
          Navigator.pop(context!);
        },
        child: Icon(
          Icons.arrow_back,
          color: ColorsX.textColor,
        ),
      ),
      backgroundColor: bgnColor,
      centerTitle: true,
      title: Text(
        title,
        style: getMediumStyle(
          color: ColorsX.textGrey,
          fontSize: 16
        ),
      ),
      actions: [
        w ?? const SizedBox()
      ],
    );
  }

}