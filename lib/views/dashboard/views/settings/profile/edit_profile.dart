import 'package:flutter/material.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
import 'package:how_much_app/core/resources/styles_x.dart';
import 'package:how_much_app/gen/assets.gen.dart';
import 'package:how_much_app/views/widgets/appbar/h_app_bars.dart';
import 'package:how_much_app/views/widgets/inputs/auth_text_field.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HAppBars().mainAppBar(
        context,
        title: "EDIT PROFILE",
        w: IconButton(
          icon: const Icon(Icons.check),
          onPressed: () {
          },
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20,),
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                      Assets.images.rectangle.path
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: ColorsX.primaryColor,
                      child: const Icon(
                        Icons.camera_alt_outlined,
                        size: 16,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 30,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "USER INFORMATION",
                    style: getMediumStyle(
                      color: ColorsX.textGrey,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                AuthTextField(
                  onChanged: (value) {
                    
                  },
                  label: "Fullname",
                  hintText: "fullname",
                ),
                const SizedBox(height: 10,),
                AuthTextField(
                  onChanged: (value) {
                    
                  },
                  label: "Email",
                  hintText: "email",
                ),
              ],
            ),
            const SizedBox(height: 30,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "PROFESSIONAL INFORMATION",
                    style: getMediumStyle(
                      color: ColorsX.textGrey,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                AuthTextField(
                  onChanged: (value) {
                    
                  },
                  label: "Years. of Experience",
                  hintText: "experience e.g 5 years",
                ),
                const SizedBox(height: 10,),
                AuthTextField(
                  onChanged: (value) {
                    
                  },
                  label: "Work mode",
                  hintText: "work mode e.g Remote",
                ),
                const SizedBox(height: 10,),
                AuthTextField(
                  onChanged: (value) {
                    
                  },
                  label: "Title",
                  hintText: "work title e.g Product designer",
                ),
                const SizedBox(height: 10,),
                AuthTextField(
                  onChanged: (value) {
                    
                  },
                  label: "Skill Stack",
                  hintText: "stacks e.g java, python",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}