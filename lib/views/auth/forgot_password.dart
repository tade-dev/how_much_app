import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:formz/formz.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
import 'package:how_much_app/core/resources/styles_x.dart';
import 'package:how_much_app/features/auth/cubit/forgotpassword/forgot_password_cubit.dart';
import 'package:how_much_app/views/widgets/appbar/h_app_bars.dart';
import 'package:how_much_app/views/widgets/buttons/buttons.dart';
import 'package:how_much_app/views/widgets/inputs/auth_text_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});

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
                key:_formKey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Forgotten your\npassword ? 😭",
                      textAlign: TextAlign.center,
                      style: getBoldStyle(color: ColorsX.textColor, fontSize: 40),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Enter your valid email address to recive a code\nan authentication code",
                      textAlign: TextAlign.center,
                      style:
                          getRegularStyle(color: ColorsX.textGrey, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    AuthTextField(
                      onChanged: (value) {
                        context.read<ForgotPasswordCubit>().updateEmail(value);
                      },
                      validator: ValidationBuilder().email().build(),
                      inputType: TextInputType.emailAddress,
                      label: "Email",
                      hintText: "e.g john@example.com",
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Buttons.primaryButton(
                      label: "Send",
                      isDisabled: !state.isForgotPasswordButtonEnabled,
                      hasIcon: false,
                      isLoading: state.forgotPasswordStatus.isInProgress,
                      onTap: () {
                        _formKey.currentState!.validate() ?
                        context.read<ForgotPasswordCubit>().initiateForgotPassword(context):
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
