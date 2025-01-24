import 'package:flutter/material.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
import 'package:pinput/pinput.dart';


class PinInputField extends StatelessWidget {
  const PinInputField({
    super.key,
    this.controller,
    this.obscureText = false,
    this.enabled = true,
    this.onTap,
    this.onSaved,
    this.length,
    this.validator,
    required this.onChanged,
  });

  final TextEditingController? controller;
  final bool enabled;
  final Function()? onTap;
  final bool obscureText;
  final Function(String?)? onSaved;
  final ValueChanged<String> onChanged;
  final int? length;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: length ?? 4,
      enabled: enabled,
      obscureText: obscureText,
      onChanged: onChanged,
      onTap: onTap,
      autofocus: true,
      controller: controller,
      defaultPinTheme: defaultTheme,
      focusedPinTheme: focusedTheme,
      errorPinTheme: errorTheme,
      validator: validator,
    );
  }
}

var defaultTheme = PinTheme(
  height: 50,
  width: 53,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    border: Border.all(
      color: ColorsX.grey, 
    )
  )
);

var focusedTheme = PinTheme(
  height: 50,
  width: 53,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    border: Border.all(
      color: ColorsX.primaryColor,
    )
  )
);

var errorTheme = PinTheme(
  height: 50,
  width: 53,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    border: Border.all(
      color: ColorsX.errorColor,
    )
  )
);