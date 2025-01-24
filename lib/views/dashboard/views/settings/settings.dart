import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:how_much_app/core/di/injectable.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
import 'package:how_much_app/core/resources/styles_x.dart';
import 'package:how_much_app/core/routes/routes.gr.dart';
import 'package:how_much_app/gen/assets.gen.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iconsax/iconsax.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 20,),
              buildForProfileWid(context),
              const SizedBox(height: 30,),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    buildForSettingsTile(
                      onTap: (){}, 
                      title: "My proposals",
                      hasDivider: true,
                      icon: Iconsax.box
                    ),
                    const SizedBox(height: 30,),
                    buildForSettingsTile(
                      onTap: (){
                        si<AppRouter>().push(const ChangePasswordScreen());
                      }, 
                      title: "Change password",
                      icon: Iconsax.lock
                    ),
                    const SizedBox(height: 30,),
                    buildForSettingsTile(
                      onTap: (){}, 
                      title: "Push notifications",
                      hasDivider: true,
                      icon: Iconsax.notification,
                      hasToggle: true
                    ),
                    const SizedBox(height: 30,),
                    buildForSettingsTile(
                      onTap: (){}, 
                      hasToggle: true,
                      title: "Face ID",
                      hasDivider: true,
                      icon: HugeIcons.strokeRoundedBiometricAccess
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: buildForSettingsTile(
                  onTap: (){}, 
                  title: "Logout",
                  islogoout: true,
                  icon: Iconsax.logout
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

buildForProfileWid(context) {
  return Column(
    children: AnimateList(
      children: [
         CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage(
            Assets.images.rectangle.path
          ),
        ),
        const SizedBox(height: 15,),
        Text(
          "Akintade Oluwaseun",
          style: getBoldStyle(
            color: ColorsX.textColor,
            fontSize: 25
          ),
        ),
        const SizedBox(height: 5,),
        Text(
          "akintadeseun816@gmail.com",
          style: getRegularStyle(
            color: ColorsX.textGrey,
            fontSize: 14
          )
        ),
        const SizedBox(height: 15,),
        GestureDetector(
          onTap: () {
            si<AppRouter>().push(const EditProfileScreen());
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: ColorsX.textColor,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Text(
              "Edit profile",
              style: getMediumStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ]
    )
  );
}

buildForSettingsTile({
  required onTap,
  required title,
  icon,
  hasToggle = false,
  islogoout = false,
  hasDivider = false
}) {
  return GestureDetector(
    onTap: onTap,
    child: Row(
      children: [
        Expanded(
          child: Row(
            children: [
              Icon(
                icon,
                color: islogoout ?
                ColorsX.errorColor:
                ColorsX.textGrey,
                size: 20,
              ),
              const SizedBox(width: 15,),
              Text(
                title,
                style: getMediumStyle(
                  color: (islogoout)?
                  ColorsX.errorColor:
                  ColorsX.textColor,
                  fontSize: 18
                )
              )
            ],
          ),
        ),
        (islogoout)?
        const SizedBox():
        Visibility(
          visible: hasToggle,
          replacement: Icon(
            Icons.arrow_forward,
            color: ColorsX.textGrey,
          ),
          child: SizedBox.fromSize(
            size: const Size(50, 30),
            child: Switch.adaptive(
              value: true, 
              activeColor: ColorsX.primaryColor,
              onChanged: (v){
            
              }
            ),
          ),
        )
      ],
    ),
  );
}