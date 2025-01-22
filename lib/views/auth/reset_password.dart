import 'package:flutter/material.dart';
import 'package:how_much_app/core/di/injectable.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
import 'package:how_much_app/core/resources/styles_x.dart';
import 'package:how_much_app/core/routes/routes.gr.dart';
import 'package:how_much_app/views/widgets/appbar/h_app_bars.dart';
import 'package:how_much_app/views/widgets/buttons/buttons.dart';
import 'package:how_much_app/views/widgets/inputs/auth_text_field.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

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
                "Reset your\npassword 💪",
                textAlign: TextAlign.center,
                style: getBoldStyle(
                  color: ColorsX.textColor,
                  fontSize: 40
                ),
              ),
              const SizedBox(height: 30,),
              AuthTextField(
                onChanged: (value) {
                  
                },
                label: "Password",
                hintText: "xxxxxx",
                obscureText: true,
                suffixIcon: const Icon(
                  Icons.visibility_off_outlined
                ),
              ),
              const SizedBox(height: 20,),
              AuthTextField(
                onChanged: (value) {
                  
                },
                label: "Confirm password",
                hintText: "xxxxxx",
                obscureText: true,
                suffixIcon: const Icon(
                  Icons.visibility_off_outlined
                ),
              ),
              const SizedBox(height: 30,),
              Buttons.primaryButton(
                label: "Reset", 
                hasIcon: false,
                onTap: () {
                  si<AppRouter>().push(const LoginScreen());
                }
              )
            ],
          ),
        ),
      ),
    );
  }
}