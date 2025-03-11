import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:how_much_app/core/db/local_cache.dart';
import 'package:how_much_app/core/di/injectable.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
import 'package:how_much_app/core/resources/styles_x.dart';
import 'package:how_much_app/core/routes/routes.gr.dart';
import 'package:how_much_app/gen/assets.gen.dart';


class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreen2State createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> with SingleTickerProviderStateMixin {


  @override
  void initState() {
    super.initState();
    navigateUser();
  }

  navigateUser() async {
    String userToken = await UserTokenCache().getCacheUserToken();
    if (userToken.isEmpty) {
      Timer(const Duration(seconds: 3), () {
        si<AppRouter>().push(const WelcomeScreen());
      });
    }else {
      Timer(const Duration(seconds: 3), () {
        si<AppRouter>().push(DashboardView());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: screenHeight * 0.48,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Hero(
                  tag: "splashLogo",
                  child: SvgPicture.asset(
                    Assets.svg.splashLogo,
                    height: 100,
                    width: 100,
                  )
                ),
                const SizedBox(height: 5),
                Text(
                  'How Much?',
                  style: getBoldStyle(
                    fontSize: 40,
                    color: ColorsX.textColor,
                  )
                ).animate()
                .fade(
                  delay: const Duration(milliseconds: 200)
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}