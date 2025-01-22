import 'package:flutter/material.dart';
import 'package:how_much_app/views/widgets/appbar/h_app_bars.dart';
import 'package:how_much_app/views/widgets/buttons/buttons.dart';
import 'package:how_much_app/views/widgets/inputs/auth_text_field.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HAppBars().mainAppBar(
        context,
        title: "CHANGE PASSWORD",
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 50,),
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
                label: "Confirm Password",
                hintText: "xxxxxx",
                obscureText: true,
                suffixIcon: const Icon(
                  Icons.visibility_off_outlined
                ),
              ),
              const SizedBox(height: 30,),
              Buttons.primaryButton(
                label: "Change", 
                hasIcon: false,
                onTap: () {
                }
              )
            ],
          ),
        ),
      ),
    );
  }
}