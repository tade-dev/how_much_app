// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;

import '../../ui/auth/create_account.dart' as _i5;
import '../../ui/auth/forgot_password.dart' as _i6;
import '../../ui/auth/login.dart' as _i4;
import '../../ui/auth/reset_password.dart' as _i7;
import '../../ui/auth/verify_email.dart' as _i8;
import '../../ui/dashboard/dashboard.dart' as _i10;
import '../../ui/dashboard/views/proposals/proposal_details_screen.dart'
    as _i12;
import '../../ui/dashboard/views/settings/profile/change_password.dart' as _i9;
import '../../ui/dashboard/views/settings/profile/edit_profile.dart' as _i11;
import '../../ui/splash/splash_screen.dart' as _i1;
import '../../ui/splash/splash_screen2.dart' as _i2;
import '../../ui/welcome/welcome_screen.dart' as _i3;

class AppRouter extends _i13.RootStackRouter {
  AppRouter([_i14.GlobalKey<_i14.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) {
      return _i13.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    SplashScreen2.name: (routeData) {
      return _i13.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.SplashScreen2(),
        transitionsBuilder: _i13.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 1000,
        opaque: true,
        barrierDismissible: false,
      );
    },
    WelcomeScreen.name: (routeData) {
      return _i13.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.WelcomeScreen(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    LoginScreen.name: (routeData) {
      final args = routeData.argsAs<LoginScreenArgs>(
          orElse: () => const LoginScreenArgs());
      return _i13.CustomPage<dynamic>(
        routeData: routeData,
        child: _i4.LoginScreen(key: args.key),
        opaque: true,
        barrierDismissible: false,
      );
    },
    CreateAccountScreen.name: (routeData) {
      final args = routeData.argsAs<CreateAccountScreenArgs>(
          orElse: () => const CreateAccountScreenArgs());
      return _i13.CustomPage<dynamic>(
        routeData: routeData,
        child: _i5.CreateAccountScreen(key: args.key),
        opaque: true,
        barrierDismissible: false,
      );
    },
    ForgotPasswordScreen.name: (routeData) {
      final args = routeData.argsAs<ForgotPasswordScreenArgs>(
          orElse: () => const ForgotPasswordScreenArgs());
      return _i13.CustomPage<dynamic>(
        routeData: routeData,
        child: _i6.ForgotPasswordScreen(key: args.key),
        opaque: true,
        barrierDismissible: false,
      );
    },
    ResetPasswordScreen.name: (routeData) {
      final args = routeData.argsAs<ResetPasswordScreenArgs>(
          orElse: () => const ResetPasswordScreenArgs());
      return _i13.CustomPage<dynamic>(
        routeData: routeData,
        child: _i7.ResetPasswordScreen(key: args.key),
        opaque: true,
        barrierDismissible: false,
      );
    },
    VerifyEmailScreen.name: (routeData) {
      final args = routeData.argsAs<VerifyEmailScreenArgs>(
          orElse: () => const VerifyEmailScreenArgs());
      return _i13.CustomPage<dynamic>(
        routeData: routeData,
        child: _i8.VerifyEmailScreen(key: args.key),
        opaque: true,
        barrierDismissible: false,
      );
    },
    ChangePasswordScreen.name: (routeData) {
      final args = routeData.argsAs<ChangePasswordScreenArgs>(
          orElse: () => const ChangePasswordScreenArgs());
      return _i13.CustomPage<dynamic>(
        routeData: routeData,
        child: _i9.ChangePasswordScreen(key: args.key),
        opaque: true,
        barrierDismissible: false,
      );
    },
    DashboardView.name: (routeData) {
      final args = routeData.argsAs<DashboardViewArgs>(
          orElse: () => const DashboardViewArgs());
      return _i13.CustomPage<dynamic>(
        routeData: routeData,
        child: _i10.DashboardView(
          key: args.key,
          initialPage: args.initialPage,
        ),
        opaque: true,
        barrierDismissible: false,
      );
    },
    EditProfileScreen.name: (routeData) {
      return _i13.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i11.EditProfileScreen(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    ProposalDetailsScreen.name: (routeData) {
      return _i13.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i12.ProposalDetailsScreen(),
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i13.RouteConfig> get routes => [
        _i13.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/splash',
          fullMatch: true,
        ),
        _i13.RouteConfig(
          SplashScreen.name,
          path: '/splash',
        ),
        _i13.RouteConfig(
          SplashScreen2.name,
          path: '/splash2',
        ),
        _i13.RouteConfig(
          WelcomeScreen.name,
          path: '/welcome',
        ),
        _i13.RouteConfig(
          LoginScreen.name,
          path: '/signin',
        ),
        _i13.RouteConfig(
          CreateAccountScreen.name,
          path: '/signup',
        ),
        _i13.RouteConfig(
          ForgotPasswordScreen.name,
          path: '/forgotPassword',
        ),
        _i13.RouteConfig(
          ResetPasswordScreen.name,
          path: '/resetPassword',
        ),
        _i13.RouteConfig(
          VerifyEmailScreen.name,
          path: '/verifyEmail',
        ),
        _i13.RouteConfig(
          ChangePasswordScreen.name,
          path: '/changePassword',
        ),
        _i13.RouteConfig(
          DashboardView.name,
          path: '/dashboard',
        ),
        _i13.RouteConfig(
          EditProfileScreen.name,
          path: '/editProfile',
        ),
        _i13.RouteConfig(
          ProposalDetailsScreen.name,
          path: '/proposal-details-screen',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreen extends _i13.PageRouteInfo<void> {
  const SplashScreen()
      : super(
          SplashScreen.name,
          path: '/splash',
        );

  static const String name = 'SplashScreen';
}

/// generated route for
/// [_i2.SplashScreen2]
class SplashScreen2 extends _i13.PageRouteInfo<void> {
  const SplashScreen2()
      : super(
          SplashScreen2.name,
          path: '/splash2',
        );

  static const String name = 'SplashScreen2';
}

/// generated route for
/// [_i3.WelcomeScreen]
class WelcomeScreen extends _i13.PageRouteInfo<void> {
  const WelcomeScreen()
      : super(
          WelcomeScreen.name,
          path: '/welcome',
        );

  static const String name = 'WelcomeScreen';
}

/// generated route for
/// [_i4.LoginScreen]
class LoginScreen extends _i13.PageRouteInfo<LoginScreenArgs> {
  LoginScreen({_i14.Key? key})
      : super(
          LoginScreen.name,
          path: '/signin',
          args: LoginScreenArgs(key: key),
        );

  static const String name = 'LoginScreen';
}

class LoginScreenArgs {
  const LoginScreenArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'LoginScreenArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.CreateAccountScreen]
class CreateAccountScreen extends _i13.PageRouteInfo<CreateAccountScreenArgs> {
  CreateAccountScreen({_i14.Key? key})
      : super(
          CreateAccountScreen.name,
          path: '/signup',
          args: CreateAccountScreenArgs(key: key),
        );

  static const String name = 'CreateAccountScreen';
}

class CreateAccountScreenArgs {
  const CreateAccountScreenArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'CreateAccountScreenArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.ForgotPasswordScreen]
class ForgotPasswordScreen
    extends _i13.PageRouteInfo<ForgotPasswordScreenArgs> {
  ForgotPasswordScreen({_i14.Key? key})
      : super(
          ForgotPasswordScreen.name,
          path: '/forgotPassword',
          args: ForgotPasswordScreenArgs(key: key),
        );

  static const String name = 'ForgotPasswordScreen';
}

class ForgotPasswordScreenArgs {
  const ForgotPasswordScreenArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'ForgotPasswordScreenArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.ResetPasswordScreen]
class ResetPasswordScreen extends _i13.PageRouteInfo<ResetPasswordScreenArgs> {
  ResetPasswordScreen({_i14.Key? key})
      : super(
          ResetPasswordScreen.name,
          path: '/resetPassword',
          args: ResetPasswordScreenArgs(key: key),
        );

  static const String name = 'ResetPasswordScreen';
}

class ResetPasswordScreenArgs {
  const ResetPasswordScreenArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'ResetPasswordScreenArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.VerifyEmailScreen]
class VerifyEmailScreen extends _i13.PageRouteInfo<VerifyEmailScreenArgs> {
  VerifyEmailScreen({_i14.Key? key})
      : super(
          VerifyEmailScreen.name,
          path: '/verifyEmail',
          args: VerifyEmailScreenArgs(key: key),
        );

  static const String name = 'VerifyEmailScreen';
}

class VerifyEmailScreenArgs {
  const VerifyEmailScreenArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'VerifyEmailScreenArgs{key: $key}';
  }
}

/// generated route for
/// [_i9.ChangePasswordScreen]
class ChangePasswordScreen
    extends _i13.PageRouteInfo<ChangePasswordScreenArgs> {
  ChangePasswordScreen({_i14.Key? key})
      : super(
          ChangePasswordScreen.name,
          path: '/changePassword',
          args: ChangePasswordScreenArgs(key: key),
        );

  static const String name = 'ChangePasswordScreen';
}

class ChangePasswordScreenArgs {
  const ChangePasswordScreenArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'ChangePasswordScreenArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.DashboardView]
class DashboardView extends _i13.PageRouteInfo<DashboardViewArgs> {
  DashboardView({
    _i14.Key? key,
    int initialPage = 0,
  }) : super(
          DashboardView.name,
          path: '/dashboard',
          args: DashboardViewArgs(
            key: key,
            initialPage: initialPage,
          ),
        );

  static const String name = 'DashboardView';
}

class DashboardViewArgs {
  const DashboardViewArgs({
    this.key,
    this.initialPage = 0,
  });

  final _i14.Key? key;

  final int initialPage;

  @override
  String toString() {
    return 'DashboardViewArgs{key: $key, initialPage: $initialPage}';
  }
}

/// generated route for
/// [_i11.EditProfileScreen]
class EditProfileScreen extends _i13.PageRouteInfo<void> {
  const EditProfileScreen()
      : super(
          EditProfileScreen.name,
          path: '/editProfile',
        );

  static const String name = 'EditProfileScreen';
}

/// generated route for
/// [_i12.ProposalDetailsScreen]
class ProposalDetailsScreen extends _i13.PageRouteInfo<void> {
  const ProposalDetailsScreen()
      : super(
          ProposalDetailsScreen.name,
          path: '/proposal-details-screen',
        );

  static const String name = 'ProposalDetailsScreen';
}
