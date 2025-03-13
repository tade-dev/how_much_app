import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:how_much_app/core/routes/route_string.dart';
import 'package:how_much_app/ui/auth/create_account.dart';
import 'package:how_much_app/ui/auth/forgot_password.dart';
import 'package:how_much_app/ui/auth/login.dart';
import 'package:how_much_app/ui/auth/reset_password.dart';
import 'package:how_much_app/ui/auth/verify_email.dart';
import 'package:how_much_app/ui/dashboard/dashboard.dart';
import 'package:how_much_app/ui/dashboard/views/proposals/proposal_details_screen.dart';
import 'package:how_much_app/ui/dashboard/views/proposals/view_proposal_screen.dart';
import 'package:how_much_app/ui/dashboard/views/settings/profile/change_password.dart';
import 'package:how_much_app/ui/dashboard/views/settings/profile/edit_profile.dart';
import 'package:how_much_app/ui/splash/splash_screen.dart';
import 'package:how_much_app/ui/splash/splash_screen2.dart';
import 'package:how_much_app/ui/welcome/welcome_screen.dart';
import 'package:injectable/injectable.dart';

@CustomAutoRouter(
  replaceInRouteName: 'Page,Route',
  transitionsBuilder: buildTransitions,
  routes: <CustomRoute>[

    CustomRoute(
      page: SplashScreen,
      path: RouteString.splash,
      initial: true
    ),
    CustomRoute(
      page: SplashScreen2,
      path: RouteString.splash2,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 1000,
    ),
    CustomRoute(
      page: WelcomeScreen,
      path: RouteString.welcome,
    ),
    CustomRoute(
      page: LoginScreen,
      path: RouteString.signin,
    ),
    CustomRoute(
      page: CreateAccountScreen,
      path: RouteString.signup,
    ),
    CustomRoute(
      page: ForgotPasswordScreen,
      path: RouteString.forgotPassword,
    ),
    CustomRoute(
      page: ResetPasswordScreen,
      path: RouteString.resetPassword,
    ),
    CustomRoute(
      page: VerifyEmailScreen,
      path: RouteString.verifyEmail,
    ),
    CustomRoute(
      page: ChangePasswordScreen,
      path: RouteString.changePassword,
    ),
    CustomRoute(
      page: DashboardView,
      path: RouteString.dashboard,
    ),
    CustomRoute(
      page: EditProfileScreen,
      path: RouteString.editProfile,
    ),
    CustomRoute(
      page: ProposalDetailsScreen,
    ),
    CustomRoute(
      page: ViewProposalScreen,
    ),

  ]

)

@lazySingleton
class $AppRouter {}

Widget buildTransitions(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  return FadeTransition(opacity: animation, child: child);
}