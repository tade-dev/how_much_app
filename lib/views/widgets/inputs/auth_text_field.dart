import 'package:flutter/material.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
import 'package:how_much_app/core/resources/styles_x.dart';


class AuthTextField extends StatelessWidget {
  AuthTextField({
    Key? key,
    this.controller,
    this.hintText,
    this.obscureText = false,
    this.label,
    this.inputType,
    this.enabled = true,
    this.expand = false,
    this.onTap,
    this.onSaved,
    this.textInputAction,
    this.onEditingComplete,
    required this.onChanged,
    this.onFieldSubmitted,
    this.prefixIcon,
    this.suffixIcon,
  }) : super(key: key);

  final TextEditingController? controller;
  final String? hintText;
  final String? label;
  final TextInputType? inputType;
  final bool enabled;
  final Function()? onTap;
  final ValueChanged<String>? onFieldSubmitted;
  final bool expand;
  final bool obscureText;
  final Function(String?)? onSaved;
  final ValueChanged<String> onChanged;
  final TextInputAction? textInputAction;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final VoidCallback? onEditingComplete;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Text(
                label ?? '',
                style: getSemiBoldStyle(
                    color: ColorsX.textColor, fontSize: 16),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: TextFormField(
              cursorColor: ColorsX.primaryColor,
              enabled: enabled,
              obscureText: obscureText,
              onChanged: onChanged,
              onTap: onTap,
              minLines: 1,
              controller: controller,
              onSaved: onSaved,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              onFieldSubmitted: onFieldSubmitted,
              onEditingComplete: onEditingComplete,
              textDirection: TextDirection.ltr,
              keyboardType: inputType,
              style: getRegularStyle(color: ColorsX.textColor, fontSize: 16),
              decoration: InputDecoration(
                errorStyle: getRegularStyle(color: ColorsX.errorColor, fontSize: 14),
                hintText: hintText,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorsX.textGrey
                  )
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorsX.textGrey
                  )
                ),
                disabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorsX.textGrey
                  )
                ),
                prefixIcon: prefixIcon,
                suffixIcon: suffixIcon,
                focusedErrorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorsX.textGrey
                  )
                ),
                errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorsX.textGrey
                  )
                ),
                hintStyle: getMediumStyle(
                    color: ColorsX.textGrey, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
