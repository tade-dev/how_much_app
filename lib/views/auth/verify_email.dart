import 'package:flutter/material.dart';
import 'package:how_much_app/core/di/injectable.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
import 'package:how_much_app/core/resources/styles_x.dart';
import 'package:how_much_app/core/routes/routes.gr.dart';
import 'package:how_much_app/views/widgets/appbar/h_app_bars.dart';
import 'package:how_much_app/views/widgets/buttons/buttons.dart';
import 'package:how_much_app/views/widgets/inputs/auth_text_field.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HAppBars().authBar(context),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
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
                "We have sent a code to\nakintadeseun816@gmail.com",
                textAlign: TextAlign.center,
                style: getRegularStyle(
                  color: ColorsX.textGrey,
                  fontSize: 14
                ),
              ),
              const SizedBox(height: 30,),
              AuthTextField(
                onChanged: (value) {
                  
                },
                label: "Email",
                hintText: "e.g john@example.com",
              ),
              const SizedBox(height: 30,),
              Buttons.primaryButton(
                label: "Verify", 
                hasIcon: false,
                onTap: () {
                  si<AppRouter>().push(const ResetPasswordScreen());
                }
              )
            ],
          ),
        ),
      ),
    );
  }
}