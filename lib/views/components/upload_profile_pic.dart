import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:how_much_app/core/di/injectable.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
import 'package:how_much_app/core/resources/styles_x.dart';
import 'package:how_much_app/core/routes/routes.gr.dart';
import 'package:how_much_app/features/profile/cubit/profile_cubit.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:image_picker/image_picker.dart';

class UploadProfilePicWid extends StatelessWidget {
  const UploadProfilePicWid({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return Container(
          height: 180,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text(
                "Upload profile picture",
                style: getSemiBoldStyle(color: ColorsX.textColor, fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              buildForImageSourceWid(
                onTap: () {
                  si<AppRouter>().pop();
                  context.read<ProfileCubit>().getImage(
                    s: ImageSource.camera
                  );
                },
                title: "Take a picture",
                icon: HugeIcons.strokeRoundedCamera01,
              ),
              const SizedBox(
                height: 20,
              ),
              buildForImageSourceWid(
                onTap: () {
                  si<AppRouter>().pop();
                  context.read<ProfileCubit>().getImage(
                    s: ImageSource.gallery
                  );
                },
                title: "Choose from gallery",
                icon: HugeIcons.strokeRoundedImage01,
              ),
            ],
          ),
        );
      },
    );
  }

  buildForImageSourceWid({onTap, title, icon}) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Icon(
            icon,
            size: 22,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: getRegularStyle(color: ColorsX.textColor, fontSize: 18),
          )
        ],
      ),
    );
  }
}
