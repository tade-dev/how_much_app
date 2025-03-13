import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
import 'package:how_much_app/core/resources/styles_x.dart';

class Buttons {

  static primaryButton({
    isLoading = false,
    hasIcon = false,
    isIconLeft = false,
    icon,
    required label,
    required onTap,
    isDisabled = false,
  }) {
    return SizedBox(
      width: 250,
      child: ElevatedButton(
        onPressed: isLoading ?
        (){}:
        isDisabled ?
        null:
        onTap, 
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorsX.primaryColor,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal:30, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          )
        ),
        child: (isLoading) ?
        const SpinKitThreeBounce(
          color: Colors.white,
          size: 30,
        ):
        Directionality(
          textDirection: isIconLeft ?
          TextDirection.rtl:
          TextDirection.ltr,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                label,
                style: getMediumStyle(
                  color: Colors.white,
                  fontSize: 18
                ),
              ),
              Visibility(
                visible: hasIcon,
                child:  Padding(
                  padding: const EdgeInsets.only(left: 15, right: 10),
                  child: Icon(
                    icon ??
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }

}