import 'package:flutter/material.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
import 'package:how_much_app/core/resources/styles_x.dart';


class DropDownField extends StatelessWidget {
  const DropDownField({
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
    this.dropDownItems
  });

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
  final Function(String?)? onChanged;
  final TextInputAction? textInputAction;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final VoidCallback? onEditingComplete;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final bool readOnly;
  final FormFieldValidator<String>? validator;
  final List<DropdownMenuItem<String>>? dropDownItems;

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
                "$label :",
                style: getSemiBoldStyle(
                    color: ColorsX.textColor, fontSize: 16),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: DropdownButtonFormField(
              items: dropDownItems,
              onChanged: onChanged,
              onTap: onTap,
              onSaved: onSaved,
              validator: validator,
              autovalidateMode: AutovalidateMode.onUserInteraction,
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
