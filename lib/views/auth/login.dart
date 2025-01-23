import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:how_much_app/core/di/injectable.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
import 'package:how_much_app/core/resources/styles_x.dart';
import 'package:how_much_app/core/routes/routes.gr.dart';
import 'package:how_much_app/features/auth/cubit/login/login_cubit.dart';
import 'package:how_much_app/views/widgets/appbar/h_app_bars.dart';
import 'package:how_much_app/views/widgets/buttons/buttons.dart';
import 'package:how_much_app/views/widgets/inputs/auth_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HAppBars().authBar(context),
      body: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          return Container(
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
                      "Welcome back! 👋",
                      textAlign: TextAlign.center,
                      style:
                          getBoldStyle(color: ColorsX.textColor, fontSize: 40),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: TextSpan(
                          text: "Are you new here ?",
                          style: getMediumStyle(
                              color: ColorsX.textColor, fontSize: 14),
                          children: [
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: InkWell(
                                onTap: () {
                                  si<AppRouter>()
                                      .push(const CreateAccountScreen());
                                },
                                child: Text(" Sign Up",
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
                        context.read<LoginCubit>().updateEmail(value);
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
                        context.read<LoginCubit>().updatePassword(value);
                      },
                      inputType: TextInputType.visiblePassword,
                      label: "Password",
                      hintText: "xxxxxx",
                      validator: ValidationBuilder().regExp(
                        RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&#])[A-Za-z\d@$!%*?&#]{8,}$'),
                        'Password must include an uppercase letter, a lowercase letter, a number, and a special character, and be at least 8 characters long.'
                      ).build(),
                      obscureText: !state.showPassword,
                      suffixIcon: InkWell(
                        onTap: () {
                          context.read<LoginCubit>().toggleShowPassword();
                        },
                        child: Icon(
                          state.showPassword ?
                          Icons.visibility_off_outlined:
                          Icons.visibility_outlined
                        )
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            si<AppRouter>().push(const ForgotPasswordScreen());
                          },
                          child: Text(
                            "Forgot Password?",
                            style: getMediumStyle(
                                color: ColorsX.primaryColor, fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Buttons.primaryButton(
                        label: "Login",
                        hasIcon: false,
                        isDisabled: !state.isLoginButtonEnabled,
                        onTap: () {
                          si<AppRouter>().push(DashboardView());
                        })
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
