import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:formz/formz.dart';
import 'package:how_much_app/core/di/injectable.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
import 'package:how_much_app/core/resources/styles_x.dart';
import 'package:how_much_app/core/routes/routes.gr.dart';
import 'package:how_much_app/features/auth/cubit/register/register_cubit.dart';
import 'package:how_much_app/ui/widgets/appbar/h_app_bars.dart';
import 'package:how_much_app/ui/widgets/buttons/buttons.dart';
import 'package:how_much_app/ui/widgets/inputs/auth_text_field.dart';
import 'package:how_much_app/ui/widgets/inputs/drop_down_field.dart';

class CreateAccountScreen extends StatelessWidget {
  CreateAccountScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                child: Form(
                  key: _formKey,
                  child: AutofillGroup(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Create your\naccount 🎉",
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
                                      si<AppRouter>().push( LoginScreen());
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
                            context.read<RegisterCubit>().updateFullname(value);
                          },
                          inputType: TextInputType.name,
                          label: "Fullname",
                          hintText: "e.g John Doe",
                          autofills: const [AutofillHints.name],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        DropDownField(
                          onChanged: (value) {
                            context.read<RegisterCubit>().updateSelectedGender(value);
                          },
                          dropDownItems: state.genders.map((gender){
                            return DropdownMenuItem(
                              value: gender,
                              child: Text(gender),
                            );
                          }).toList(),
                          inputType: TextInputType.name,
                          label: "Gender",
                          hintText: "Select your gender",
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
                          autofills: const [AutofillHints.email],
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
                          autofills: const [AutofillHints.password],
                          validator: ValidationBuilder().regExp(
                            RegExp(r'[!@#$%^&*(),.?":{}|<>]'),
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
                          isLoading: state.signUpStatus.isInProgress,
                          isDisabled: !state.isRegisterButtonEnabled,
                          onTap: () {
                            _formKey.currentState!.validate() ?
                            context.read<RegisterCubit>().registerUser(context):
                            AutovalidateMode.disabled;
                            TextInput.finishAutofillContext(); 
                          }
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
