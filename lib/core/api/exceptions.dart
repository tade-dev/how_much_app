import 'package:flutter/material.dart';
import 'package:how_much_app/core/resources/styles_x.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';


void handleException(String errorMessage, BuildContext context) {

  showTopSnackBar(
    Overlay.of(context),
    CustomSnackBar.error(
      message: errorMessage,
      textStyle: getMediumStyle(
        color: Colors.white,
        fontSize: 16
      ),
    ),
  );

}