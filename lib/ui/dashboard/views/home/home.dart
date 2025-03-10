import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:how_much_app/core/di/injectable.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
import 'package:how_much_app/core/resources/styles_x.dart';
import 'package:how_much_app/core/routes/routes.gr.dart';
import 'package:how_much_app/features/profile/cubit/profile_cubit.dart';
import 'package:how_much_app/gen/assets.gen.dart';
import 'package:how_much_app/ui/widgets/inputs/search_input_field.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iconsax/iconsax.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              BlocBuilder<ProfileCubit, ProfileState>(
                builder: (context, state) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hi, ${state.userData?.firstname ?? "user"} 👋",
                              style: getBoldStyle(
                                  color: ColorsX.textColor, fontSize: 25),
                            ),
                            Text(
                              "Ready to craft your next proposal?",
                              style: getMediumStyle(
                                  color: ColorsX.textGrey, fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          si<AppRouter>().push(const EditProfileScreen());
                        },
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: (state.selectedImage != null)
                              ? FileImage(state.selectedImage!)
                              : (state.userData?.image != null)
                                  ? NetworkImage(
                                      state.userData?.image ?? "")
                                  : AssetImage(
                                      Assets.images.profileAvatar.path),
                        ),
                      ),
                    ],
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding:  EdgeInsets.only(left: 25, right: 3),
                      child: Icon(
                        HugeIcons.strokeRoundedSearch01,
                      ),
                    ),
                    Expanded(
                      child: SearchInputField(
                        onChanged: (v) {
                      
                        },
                        hintText: "Search",
                      ),
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        
                      },
                      elevation: 0,
                      backgroundColor: ColorsX.textColor,
                      shape: const CircleBorder(),
                      child: const Icon(
                        Iconsax.setting_4,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Quick actions",
                style: getBoldStyle(
                    color: ColorsX.textColor, fontSize: 25),
              ),
              const SizedBox(
                height: 5,
              ),
              SingleChildScrollView(
                child: Row(
                  children: [
                    buildQuickActionBtn(
                      title: "Generate New Proposal ", 
                      onTap: (){
                
                      }
                    ),
                    const SizedBox(width: 10,),
                    buildQuickActionBtn(
                      title: "View Saved Proposals", 
                      onTap: (){
                
                      },
                      isScnd: true
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Proposals",
                    style: getBoldStyle(
                      color: ColorsX.textColor, fontSize: 25
                    ),
                  ),
                  Text(
                    "View all",
                    style: getMediumStyle(
                      color: ColorsX.textColor, fontSize: 14
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildQuickActionBtn({required String title, required Function() onTap, bool isScnd = false}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: isScnd ? ColorsX.textColor :
          Colors.white
        ),
        child: Text(
          title,
          style: getMediumStyle(
            color: isScnd ? Colors.white :
            ColorsX.textGrey,
            fontSize: 14
          ),
        ),
      ),
    );
  }

}
