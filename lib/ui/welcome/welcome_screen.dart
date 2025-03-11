import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:how_much_app/core/di/injectable.dart';
import 'package:how_much_app/core/resources/colors_x.dart';
import 'package:how_much_app/core/resources/styles_x.dart';
import 'package:how_much_app/core/routes/routes.gr.dart';
import 'package:how_much_app/gen/assets.gen.dart';
import 'package:how_much_app/ui/widgets/buttons/buttons.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    Assets.images.maleImage.path
                  ),
                  fit: BoxFit.cover,
                )
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            decoration: const BoxDecoration(
              color: Colors.white
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'How Much?',
                      style: getBoldStyle(
                        fontSize: 30,
                        color: ColorsX.textColor,
                      )
                    ),
                    const SizedBox(width: 10),
                    SvgPicture.asset(
                      Assets.svg.splashLogo,
                      height: 50,
                      width: 50,
                    ),
                  ],
                ).animate()
                .fade(
                  begin: 0,
                  end: 1,
                  duration: const Duration(milliseconds: 800)
                )
                .slide(
                  begin: const Offset(-1.0, 0.0),
                  end: const Offset(0.0, 0.0),
                  duration: const Duration(milliseconds: 200)
                ),
                const SizedBox(height: 10,),
                AutoSizeText(
                  "The platform that generates a pricing proposal for developers based on their experiences and skillset 🚀",
                  style: getMediumStyle(
                    color: ColorsX.textGrey,
                    fontSize: 18,
                  ),
                ).animate()
                .fade(
                  begin: 0,
                  end: 1,
                  duration: const Duration(milliseconds: 800),
                  delay: const Duration(milliseconds: 100)
                )
                .slide(
                  begin: const Offset(-1.0, 0.0),
                  end: const Offset(0.0, 0.0),
                  duration: const Duration(milliseconds: 200),
                  delay: const Duration(milliseconds: 100),
                ),
                const SizedBox(height: 30,),
                RichText(
                  text: TextSpan(
                    text: "Already have an account ?",
                    style: getMediumStyle(
                      color: ColorsX.textGrey,
                      fontSize: 16
                    ),
                    children: [
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: InkWell(
                          onTap: () {
                            si<AppRouter>().push(LoginScreen());
                          },
                          child: Text(
                           " Sign In",
                            style: getSemiBoldStyle(
                              color: ColorsX.primaryColor,
                              fontSize: 16
                            )
                          ),
                        ),
                      )
                    ]
                  ),
                ).animate()
                .fade(
                  begin: 0,
                  end: 1,
                  duration: const Duration(milliseconds: 800),
                  delay: const Duration(milliseconds: 300)
                )
                .slide(
                  begin: const Offset(-1.0, 0.0),
                  end: const Offset(0.0, 0.0),
                  duration: const Duration(milliseconds: 200),
                  delay: const Duration(milliseconds: 300),
                ),
                const SizedBox(height: 20,),
                Container(
                  child: Buttons.primaryButton(label: "Get Started", 
                  hasIcon: true,
                  onTap: (){
                    si<AppRouter>().push(CreateAccountScreen());
                  }
                ),
                ).animate()
                .fade(
                  begin: 0,
                  end: 1,
                  duration: const Duration(milliseconds: 800),
                  delay: const Duration(milliseconds: 200)
                )
                .slide(
                  begin: const Offset(-1.0, 0.0),
                  end: const Offset(0.0, 0.0),
                  duration: const Duration(milliseconds: 200),
                  delay: const Duration(milliseconds: 200),
                ),
                const SizedBox(height: 30,),
              ],
            ),
          )
        ],
      ),
    );
  }
}