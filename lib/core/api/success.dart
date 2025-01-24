import 'package:flutter/material.dart';
import 'package:how_much_app/core/resources/styles_x.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

void handleSuccess(
  {
    required BuildContext context,
    required String message,
  }
) {

  showTopSnackBar(
    Overlay.of(context),
    CustomSnackBar.success(
      message: message,
      textStyle: getMediumStyle(
        color: Colors.white,
        fontSize: 16
      ),
    ),
  );
}