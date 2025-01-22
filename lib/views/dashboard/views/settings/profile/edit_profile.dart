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
        padding: const EdgeInsets.symmetric(horizontal: 15),
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
                  hintText: "e.g John Doe",
                ),
                const SizedBox(height: 10,),
                AuthTextField(
                  onChanged: (value) {
                    
                  },
                  label: "Email",
                  hintText: "e.g john@example.com",
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
                  hintText: "e.g 5",
                  suffixIcon: SizedBox(
                    height: 20,
                    width: 40,
                    child: Center(
                      child: Text(
                        "years",
                        style: getMediumStyle(
                          color: ColorsX.textGrey,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                AuthTextField(
                  onChanged: (value) {
                    
                  },
                  label: "Title",
                  hintText: "e.g Product designer",
                ),
                const SizedBox(height: 10,),
                AuthTextField(
                  onChanged: (value) {
                    
                  },
                  label: "Work mode",
                  hintText: "e.g Remote",
                ),
                const SizedBox(height: 10,),
                AuthTextField(
                  onChanged: (value) {
                    
                  },
                  label: "Skill stack",
                  hintText: "e.g java, python",
                ),
                const SizedBox(height: 10,),
                AuthTextField(
                  onChanged: (value) {
                    
                  },
                  label: "Portfolio link",
                  hintText: "e.g https://user.dev",
                ),
                const SizedBox(height: 10,),
                AuthTextField(
                  onChanged: (value) {
                    
                  },
                  label: "Resume/CV link",
                  hintText: "e.g https://resume.io.com/",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}