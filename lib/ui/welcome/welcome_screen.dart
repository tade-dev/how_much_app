import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
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

  late AnimationController _animationController;
  late Animation<double> scaleAnimations;
  late Animation<Offset> offsetAnimation;
  
  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 900),
      vsync: this
    );

    scaleAnimations = Tween<double>(
      begin: 1,
      end: 1.1
    ).animate(CurvedAnimation(parent: _animationController, curve: Curves.easeInOut));

    offsetAnimation = Tween<Offset>(
      begin: const Offset(0, 30),
      end: const Offset(0, 0)
    ).animate(CurvedAnimation(parent: _animationController, curve: Curves.easeInOut));

    _animationController.forward();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ScaleTransition(
            scale: scaleAnimations,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    Assets.images.maleImage.path
                  ),
                  fit: BoxFit.cover,
                )
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0),
                      Colors.black.withOpacity(0.9),
                    ]
                  )
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: SlideTransition(
                position: offsetAnimation,
                child: Column(
                  children: [
                    const Icon(
                      Icons.insights,
                      size: 60,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 10,),
                    Text(
                      "Welcome To\nHow Much App",
                      textAlign: TextAlign.center,
                      style: getSemiBoldStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(height: 10,),
                    AutoSizeText(
                      "A platform that generates a pricing proposal for developers based on their experiences and skillset 🚀",
                      maxLines: 2,
                      minFontSize: 13,
                      textAlign: TextAlign.center,
                      style: getRegularStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Buttons.primaryButton(label: "Get Started", 
                    hasIcon: true,
                    onTap: (){
                      si<AppRouter>().push( CreateAccountScreen());
                    }),
                    const SizedBox(height: 30,),
                    RichText(
                      text: TextSpan(
                        text: "Already have an account ?",
                        style: getRegularStyle(
                          color: Colors.white,
                          fontSize: 14
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
                                style: getRegularStyle(
                                  color: ColorsX.primaryColor,
                                  fontSize: 14
                                )
                              ),
                            ),
                          )
                        ]
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}