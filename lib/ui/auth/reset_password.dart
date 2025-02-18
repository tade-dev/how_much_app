import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:formz/formz.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
import 'package:how_much_app/core/resources/styles_x.dart';
import 'package:how_much_app/features/auth/cubit/forgotpassword/forgot_password_cubit.dart';
import 'package:how_much_app/ui/widgets/appbar/h_app_bars.dart';
import 'package:how_much_app/ui/widgets/buttons/buttons.dart';
import 'package:how_much_app/ui/widgets/inputs/auth_text_field.dart';

class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgotPasswordCubit, ForgotPasswordState>(
      builder: (context, state) {
        return Scaffold(
          appBar: HAppBars().authBar(context),
          body: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SafeArea(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Reset your\npassword 💪",
                      textAlign: TextAlign.center,
                      style: getBoldStyle(color: ColorsX.textColor, fontSize: 40),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    AuthTextField(
                      onChanged: (value) {
                        context.read<ForgotPasswordCubit>().updatePassword(value);
                      },
                      inputType: TextInputType.visiblePassword,
                      label: "Password",
                      hintText: "xxxxxx",
                      validator: ValidationBuilder()
                          .regExp(
                              RegExp(
                                  r'[!@#$%^&*(),.?":{}|<>]'),
                              'Password must include an uppercase letter, a lowercase letter, a number, and a special character, and be at least 8 characters long.')
                          .build(),
                      obscureText: !state.showPassword,
                      suffixIcon: InkWell(
                          onTap: () {
                            context.read<ForgotPasswordCubit>().toggleShowPassword();
                          },
                          child: Icon(state.showPassword
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AuthTextField(
                      onChanged: (value) {
                        context.read<ForgotPasswordCubit>().updateConfirmPassword(value);
                      },
                      inputType: TextInputType.visiblePassword,
                      label: "Confirm password",
                      hintText: "xxxxxx",
                      validator: ValidationBuilder()
                          .regExp(
                              RegExp(
                                  r'[!@#$%^&*(),.?":{}|<>]'),
                              'Password must include an uppercase letter, a lowercase letter, a number, and a special character, and be at least 8 characters long.')
                          .build(),
                      obscureText: !state.showPassword,
                      suffixIcon: InkWell(
                          onTap: () {
                            context.read<ForgotPasswordCubit>().toggleShowPassword();
                          },
                          child: Icon(state.showPassword
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined)),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Buttons.primaryButton(
                      label: "Reset",
                      hasIcon: false,
                      isLoading: state.resetPasswordStatus.isInProgress,
                      isDisabled: !state.isForgotPasswordButtonEnabled,
                      onTap: () {
                        _formKey.currentState!.validate() ?
                        context.read<ForgotPasswordCubit>().initiateResetPassword(context):
                        AutovalidateMode.disabled;
                      }
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
