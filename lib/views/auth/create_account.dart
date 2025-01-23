import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:how_much_app/core/di/injectable.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
import 'package:how_much_app/core/resources/styles_x.dart';
import 'package:how_much_app/core/routes/routes.gr.dart';
import 'package:how_much_app/features/auth/cubit/register/register_cubit.dart';
import 'package:how_much_app/views/widgets/appbar/h_app_bars.dart';
import 'package:how_much_app/views/widgets/buttons/buttons.dart';
import 'package:how_much_app/views/widgets/inputs/auth_text_field.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: HAppBars().authBar(context),
          body: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Create your\naccount",
                      textAlign: TextAlign.center,
                      style:
                          getBoldStyle(color: ColorsX.textColor, fontSize: 40),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: TextSpan(
                          text: "Already have an account ?",
                          style: getMediumStyle(
                              color: ColorsX.textColor, fontSize: 14),
                          children: [
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: InkWell(
                                onTap: () {
                                  si<AppRouter>().push(const LoginScreen());
                                },
                                child: Text(" Sign In",
                                    style: getMediumStyle(
                                        color: ColorsX.primaryColor,
                                        fontSize: 14)),
                              ),
                            )
                          ]),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    AuthTextField(
                      onChanged: (value) {
                      },

                      inputType: TextInputType.name,
                      label: "Fullname",
                      hintText: "e.g John Doe",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AuthTextField(
                      onChanged: (value) {
                        context.read<RegisterCubit>().updateEmail(value);
                      },
                      validator: ValidationBuilder().email().build(),
                      inputType: TextInputType.emailAddress,
                      label: "Email",
                      hintText: "e.g john@example.com",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AuthTextField(
                      onChanged: (value) {
                        context.read<RegisterCubit>().updatePassword(value);
                      },
                      inputType: TextInputType.visiblePassword,
                      label: "Password",
                      hintText: "xxxxxx",
                      validator: ValidationBuilder().regExp(
                        RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&#])[A-Za-z\d@$!%*?&#]{8,}$'),
                        'Password must include an uppercase letter, a lowercase letter, a number, and a special character, and be at least 8 characters long.'
                      ).build(),
                      // obscureText: !state.sh,
                      suffixIcon: InkWell(
                        onTap: () {
                          context.read<RegisterCubit>().toggleShowPassword();
                        },
                        child: Icon(
                          state.showPassword ?
                          Icons.visibility_off_outlined:
                          Icons.visibility_outlined
                        )
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Buttons.primaryButton(
                      label: "Register",
                      hasIcon: false,
                      // isDisabled: !state.is,
                      onTap: () {
                        si<AppRouter>().push(const VerifyEmailScreen());
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
