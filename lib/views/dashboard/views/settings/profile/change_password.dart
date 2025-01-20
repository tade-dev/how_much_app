import 'package:flutter/material.dart';
import 'package:how_much_app/gen/assets.gen.dart';
import 'package:how_much_app/views/widgets/appbar/h_app_bars.dart';

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
        child: Column(
          children: [
            const SizedBox(height: 20,),
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(
                Assets.images.rectangle.path
              ),
            ),
          ],
        ),
      ),
    );
  }
}