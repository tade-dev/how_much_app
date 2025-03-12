import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:formz/formz.dart';
import 'package:how_much_app/core/di/injectable.dart';
import 'package:how_much_app/core/enums/enums.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
import 'package:how_much_app/core/resources/styles_x.dart';
import 'package:how_much_app/core/routes/route_string.dart';
import 'package:how_much_app/core/routes/routes.gr.dart';
import 'package:how_much_app/features/auth/cubit/login/login_cubit.dart';
import 'package:how_much_app/features/profile/cubit/profile_cubit.dart';
// import 'package:how_much_app/features/profile/cubit/profile_cubit.dart';
import 'package:how_much_app/ui/widgets/appbar/h_app_bars.dart';
import 'package:how_much_app/ui/widgets/buttons/buttons.dart';
import 'package:how_much_app/ui/widgets/inputs/auth_text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HAppBars().authBar(context),
      body: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          var profileState = si<ProfileCubit>().state;
          if(state.loginStatus.isSuccess) {
            if((profileState.userData?.developerTitle ?? "").isEmpty) {
              si<AppRouter>().replaceNamed(RouteString.dashboard);
              si<AppRouter>().replaceNamed(RouteString.editProfile);
              context.read<ProfileCubit>().updateEditProfileCurrentState(EditProfileCurrentState.login);
              context.read<ProfileCubit>().getProfile();
            }else {
              si<AppRouter>().replaceNamed(RouteString.dashboard);
              context.read<ProfileCubit>().getProfile();
            }
          }
        },
        child: BlocBuilder<LoginCubit, LoginState>(
          builder: (context, state) {
            return Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SafeArea(
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: AutofillGroup(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Welcome back! 👋",
                            textAlign: TextAlign.center,
                            style: getBoldStyle(
                                color: ColorsX.textColor, fontSize: 40),
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
                                            .push(CreateAccountScreen());
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
                            autofills: const [AutofillHints.email],
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
                            autofills: const [AutofillHints.password],
                            validator: ValidationBuilder().build(),
                            obscureText: !state.showPassword,
                            suffixIcon: InkWell(
                                onTap: () {
                                  context.read<LoginCubit>().toggleShowPassword();
                                },
                                child: Icon(state.showPassword
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility_outlined)),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  si<AppRouter>().push(ForgotPasswordScreen());
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
                              isLoading: state.loginStatus.isInProgress,
                              isDisabled: !state.isLoginButtonEnabled,
                              onTap: () {
                                _formKey.currentState!.validate()
                                    ? context
                                        .read<LoginCubit>()
                                        .loginUser()
                                    : AutovalidateMode.disabled;
                                TextInput.finishAutofillContext(); 
                                
                              })
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
