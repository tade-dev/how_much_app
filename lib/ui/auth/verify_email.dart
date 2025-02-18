import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:formz/formz.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
import 'package:how_much_app/core/resources/styles_x.dart';
import 'package:how_much_app/features/auth/cubit/verification/verifcation_cubit.dart';
import 'package:how_much_app/gen/fonts.gen.dart';
import 'package:how_much_app/ui/widgets/appbar/h_app_bars.dart';
import 'package:how_much_app/ui/widgets/buttons/buttons.dart';
import 'package:how_much_app/ui/widgets/inputs/pin_input_field.dart';

class VerifyEmailScreen extends StatelessWidget {
  VerifyEmailScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VerifcationCubit, VerifcationState>(
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
                    const SizedBox(height: 30,),
                    Text(
                      "Verify your\nemail 🚀",
                      textAlign: TextAlign.center,
                      style: getBoldStyle(
                        color: ColorsX.textColor,
                        fontSize: 40
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Text(
                      "We have sent a code to\n${""}",
                      textAlign: TextAlign.center,
                      style: getRegularStyle(
                        color: ColorsX.textGrey,
                        fontSize: 14
                      ),
                    ),
                    const SizedBox(height: 20,),
                    PinInputField(
                      onChanged: (v){
                        context.read<VerifcationCubit>().updatePinCode(v);
                      },
                      length: 6,
                      validator: ValidationBuilder().build(),
                    ),
                    const SizedBox(height: 20,),
                    InkWell(
                      onTap: () {
                        
                      },
                      child: Text(
                        "Resend Code",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ColorsX.errorColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: FontFamily.urbanist,
                          decoration: TextDecoration.underline,
                          decorationColor: ColorsX.errorColor,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Buttons.primaryButton(
                      label: "Verify", 
                      hasIcon: false,
                      isLoading: state.verifyStatus.isInProgress,
                      isDisabled: !state.isVerifyButtonEnabled,
                      onTap: () {
                        _formKey.currentState!.validate() ?
                        context.read<VerifcationCubit>().verifyEmail(context):
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