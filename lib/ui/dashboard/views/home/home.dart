import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:how_much_app/core/di/injectable.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
import 'package:how_much_app/core/resources/styles_x.dart';
import 'package:how_much_app/core/routes/routes.gr.dart';
import 'package:how_much_app/features/profile/cubit/profile_cubit.dart';
import 'package:how_much_app/gen/assets.gen.dart';

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
                    children: [
                      GestureDetector(
                        onTap: () {
                          si<AppRouter>().push(const EditProfileScreen());
                        },
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: (state.selectedImage != null)
                              ? FileImage(state.selectedImage!)
                              : (state.userData?.image != null)
                                  ? NetworkImage(
                                      state.userData?.image ?? "")
                                  : AssetImage(
                                      Assets.images.profileAvatar.path),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi, ${state.userData?.firstname ?? "user"} 👋",
                            style: getSemiBoldStyle(
                                color: ColorsX.textColor, fontSize: 16),
                          ),
                          Text(
                            "Ready to craft your next proposal?",
                            style: getMediumStyle(
                                color: ColorsX.textGrey, fontSize: 13),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
