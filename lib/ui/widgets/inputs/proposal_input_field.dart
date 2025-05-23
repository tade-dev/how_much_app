import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
import 'package:how_much_app/core/resources/styles_x.dart';


class ProposalInputField extends StatelessWidget {
  const ProposalInputField({
    super.key,
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
    this.maxLength,
    this.maxLines = 1,
    this.minLines,
    this.readOnly = false,
    this.validator,
    this.inputformatters,
    this.autofills
  });

  final TextEditingController? controller;
  final String? hintText;
  final String? label;
  final TextInputType? inputType;
  final List<TextInputFormatter>? inputformatters;
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
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final bool readOnly;
  final FormFieldValidator<String>? validator;
  final Iterable<String>? autofills;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            minFontSize: 14,
            "$label :",
            maxLines: label!.contains(" ") ? 2 : 1,
            style: getSemiBoldStyle(
                color: ColorsX.textColor, fontSize: 16),
          ),
          TextFormField(
            cursorColor: ColorsX.primaryColor,
            enabled: enabled,
            obscureText: obscureText,
            onChanged: onChanged,
            onTap: onTap,
            autofillHints: autofills,
            minLines: minLines,
            maxLines: maxLines,
            inputFormatters: inputformatters,
            maxLength: maxLength,
            controller: controller,
            onSaved: onSaved,
            readOnly: readOnly,
            validator: validator,
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
        ],
      ),
    );
  }
}
