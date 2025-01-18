import 'package:flutter/material.dart';
import 'package:how_much_app/core/resources/colors_x.dart';

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

}