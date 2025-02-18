import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:how_much_app/core/db/local_cache.dart';
import 'package:how_much_app/core/di/injectable.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
import 'package:how_much_app/core/resources/styles_x.dart';
import 'package:how_much_app/core/routes/route_string.dart';
import 'package:how_much_app/core/routes/routes.gr.dart';
import 'package:how_much_app/features/profile/cubit/profile_cubit.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iconsax/iconsax.dart';

class LogoutWid extends StatelessWidget {
  const LogoutWid({super.key});

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
                "Are you sure you want to logout ?",
                textAlign: TextAlign.center,
                style: getSemiBoldStyle(color: ColorsX.textColor, fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              buildForImageSourceWid(
                onTap: () async {
                  await UserTokenCache().clearUserTokenCache();
                  si<AppRouter>().replaceNamed(RouteString.signin);
                },
                title: "Proceed",
                icon: Iconsax.logout,
              ),
              const SizedBox(
                height: 20,
              ),
              buildForImageSourceWid(
                onTap: () {
                  si<AppRouter>().pop();
                },
                title: "Cancel",
                icon: HugeIcons.strokeRoundedCancel01,
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
