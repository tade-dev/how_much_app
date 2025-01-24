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
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;

import '../../views/auth/create_account.dart' as _i4;
import '../../views/auth/forgot_password.dart' as _i5;
import '../../views/auth/login.dart' as _i3;
import '../../views/auth/reset_password.dart' as _i6;
import '../../views/auth/verify_email.dart' as _i7;
import '../../views/dashboard/dashboard.dart' as _i9;
import '../../views/dashboard/views/settings/profile/change_password.dart'
    as _i8;
import '../../views/dashboard/views/settings/profile/edit_profile.dart' as _i10;
import '../../views/splash/splash_screen.dart' as _i1;
import '../../views/welcome/welcome_screen.dart' as _i2;

class AppRouter extends _i11.RootStackRouter {
  AppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) {
      return _i11.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    WelcomeScreen.name: (routeData) {
      return _i11.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.WelcomeScreen(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    LoginScreen.name: (routeData) {
      final args = routeData.argsAs<LoginScreenArgs>(
          orElse: () => const LoginScreenArgs());
      return _i11.CustomPage<dynamic>(
        routeData: routeData,
        child: _i3.LoginScreen(key: args.key),
        opaque: true,
        barrierDismissible: false,
      );
    },
    CreateAccountScreen.name: (routeData) {
      final args = routeData.argsAs<CreateAccountScreenArgs>(
          orElse: () => const CreateAccountScreenArgs());
      return _i11.CustomPage<dynamic>(
        routeData: routeData,
        child: _i4.CreateAccountScreen(key: args.key),
        opaque: true,
        barrierDismissible: false,
      );
    },
    ForgotPasswordScreen.name: (routeData) {
      final args = routeData.argsAs<ForgotPasswordScreenArgs>(
          orElse: () => const ForgotPasswordScreenArgs());
      return _i11.CustomPage<dynamic>(
        routeData: routeData,
        child: _i5.ForgotPasswordScreen(key: args.key),
        opaque: true,
        barrierDismissible: false,
      );
    },
    ResetPasswordScreen.name: (routeData) {
      final args = routeData.argsAs<ResetPasswordScreenArgs>(
          orElse: () => const ResetPasswordScreenArgs());
      return _i11.CustomPage<dynamic>(
        routeData: routeData,
        child: _i6.ResetPasswordScreen(key: args.key),
        opaque: true,
        barrierDismissible: false,
      );
    },
    VerifyEmailScreen.name: (routeData) {
      final args = routeData.argsAs<VerifyEmailScreenArgs>(
          orElse: () => const VerifyEmailScreenArgs());
      return _i11.CustomPage<dynamic>(
        routeData: routeData,
        child: _i7.VerifyEmailScreen(key: args.key),
        opaque: true,
        barrierDismissible: false,
      );
    },
    ChangePasswordScreen.name: (routeData) {
      return _i11.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i8.ChangePasswordScreen(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    DashboardView.name: (routeData) {
      final args = routeData.argsAs<DashboardViewArgs>(
          orElse: () => const DashboardViewArgs());
      return _i11.CustomPage<dynamic>(
        routeData: routeData,
        child: _i9.DashboardView(
          key: args.key,
          initialPage: args.initialPage,
        ),
        opaque: true,
        barrierDismissible: false,
      );
    },
    EditProfileScreen.name: (routeData) {
      return _i11.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i10.EditProfileScreen(),
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/splash',
          fullMatch: true,
        ),
        _i11.RouteConfig(
          SplashScreen.name,
          path: '/splash',
        ),
        _i11.RouteConfig(
          WelcomeScreen.name,
          path: '/welcome',
        ),
        _i11.RouteConfig(
          LoginScreen.name,
          path: '/signin',
        ),
        _i11.RouteConfig(
          CreateAccountScreen.name,
          path: '/signup',
        ),
        _i11.RouteConfig(
          ForgotPasswordScreen.name,
          path: '/forgotPassword',
        ),
        _i11.RouteConfig(
          ResetPasswordScreen.name,
          path: '/resetPassword',
        ),
        _i11.RouteConfig(
          VerifyEmailScreen.name,
          path: '/verifyEmail',
        ),
        _i11.RouteConfig(
          ChangePasswordScreen.name,
          path: '/changePassword',
        ),
        _i11.RouteConfig(
          DashboardView.name,
          path: '/dashboard',
        ),
        _i11.RouteConfig(
          EditProfileScreen.name,
          path: '/editProfile',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreen extends _i11.PageRouteInfo<void> {
  const SplashScreen()
      : super(
          SplashScreen.name,
          path: '/splash',
        );

  static const String name = 'SplashScreen';
}

/// generated route for
/// [_i2.WelcomeScreen]
class WelcomeScreen extends _i11.PageRouteInfo<void> {
  const WelcomeScreen()
      : super(
          WelcomeScreen.name,
          path: '/welcome',
        );

  static const String name = 'WelcomeScreen';
}

/// generated route for
/// [_i3.LoginScreen]
class LoginScreen extends _i11.PageRouteInfo<LoginScreenArgs> {
  LoginScreen({_i12.Key? key})
      : super(
          LoginScreen.name,
          path: '/signin',
          args: LoginScreenArgs(key: key),
        );

  static const String name = 'LoginScreen';
}

class LoginScreenArgs {
  const LoginScreenArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'LoginScreenArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.CreateAccountScreen]
class CreateAccountScreen extends _i11.PageRouteInfo<CreateAccountScreenArgs> {
  CreateAccountScreen({_i12.Key? key})
      : super(
          CreateAccountScreen.name,
          path: '/signup',
          args: CreateAccountScreenArgs(key: key),
        );

  static const String name = 'CreateAccountScreen';
}

class CreateAccountScreenArgs {
  const CreateAccountScreenArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'CreateAccountScreenArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.ForgotPasswordScreen]
class ForgotPasswordScreen
    extends _i11.PageRouteInfo<ForgotPasswordScreenArgs> {
  ForgotPasswordScreen({_i12.Key? key})
      : super(
          ForgotPasswordScreen.name,
          path: '/forgotPassword',
          args: ForgotPasswordScreenArgs(key: key),
        );

  static const String name = 'ForgotPasswordScreen';
}

class ForgotPasswordScreenArgs {
  const ForgotPasswordScreenArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'ForgotPasswordScreenArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.ResetPasswordScreen]
class ResetPasswordScreen extends _i11.PageRouteInfo<ResetPasswordScreenArgs> {
  ResetPasswordScreen({_i12.Key? key})
      : super(
          ResetPasswordScreen.name,
          path: '/resetPassword',
          args: ResetPasswordScreenArgs(key: key),
        );

  static const String name = 'ResetPasswordScreen';
}

class ResetPasswordScreenArgs {
  const ResetPasswordScreenArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'ResetPasswordScreenArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.VerifyEmailScreen]
class VerifyEmailScreen extends _i11.PageRouteInfo<VerifyEmailScreenArgs> {
  VerifyEmailScreen({_i12.Key? key})
      : super(
          VerifyEmailScreen.name,
          path: '/verifyEmail',
          args: VerifyEmailScreenArgs(key: key),
        );

  static const String name = 'VerifyEmailScreen';
}

class VerifyEmailScreenArgs {
  const VerifyEmailScreenArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'VerifyEmailScreenArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.ChangePasswordScreen]
class ChangePasswordScreen extends _i11.PageRouteInfo<void> {
  const ChangePasswordScreen()
      : super(
          ChangePasswordScreen.name,
          path: '/changePassword',
        );

  static const String name = 'ChangePasswordScreen';
}

/// generated route for
/// [_i9.DashboardView]
class DashboardView extends _i11.PageRouteInfo<DashboardViewArgs> {
  DashboardView({
    _i12.Key? key,
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

  final _i12.Key? key;

  final int initialPage;

  @override
  String toString() {
    return 'DashboardViewArgs{key: $key, initialPage: $initialPage}';
  }
}

/// generated route for
/// [_i10.EditProfileScreen]
class EditProfileScreen extends _i11.PageRouteInfo<void> {
  const EditProfileScreen()
      : super(
          EditProfileScreen.name,
          path: '/editProfile',
        );

  static const String name = 'EditProfileScreen';
}
