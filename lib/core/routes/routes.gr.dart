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
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../../views/auth/create_account.dart' as _i4;
import '../../views/auth/login.dart' as _i3;
import '../../views/dashboard/dashboard.dart' as _i5;
import '../../views/dashboard/views/settings/profile/edit_profile.dart' as _i6;
import '../../views/splash/splash_screen.dart' as _i1;
import '../../views/welcome/welcome_screen.dart' as _i2;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) {
      return _i7.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    WelcomeScreen.name: (routeData) {
      return _i7.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.WelcomeScreen(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    LoginScreen.name: (routeData) {
      return _i7.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.LoginScreen(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    CreateAccountScreen.name: (routeData) {
      return _i7.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.CreateAccountScreen(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    DashboardView.name: (routeData) {
      final args = routeData.argsAs<DashboardViewArgs>(
          orElse: () => const DashboardViewArgs());
      return _i7.CustomPage<dynamic>(
        routeData: routeData,
        child: _i5.DashboardView(
          key: args.key,
          initialPage: args.initialPage,
        ),
        opaque: true,
        barrierDismissible: false,
      );
    },
    EditProfileScreen.name: (routeData) {
      return _i7.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i6.EditProfileScreen(),
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/splash',
          fullMatch: true,
        ),
        _i7.RouteConfig(
          SplashScreen.name,
          path: '/splash',
        ),
        _i7.RouteConfig(
          WelcomeScreen.name,
          path: '/welcome',
        ),
        _i7.RouteConfig(
          LoginScreen.name,
          path: '/signin',
        ),
        _i7.RouteConfig(
          CreateAccountScreen.name,
          path: '/signup',
        ),
        _i7.RouteConfig(
          DashboardView.name,
          path: '/dashboard',
        ),
        _i7.RouteConfig(
          EditProfileScreen.name,
          path: '/editProfile',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreen extends _i7.PageRouteInfo<void> {
  const SplashScreen()
      : super(
          SplashScreen.name,
          path: '/splash',
        );

  static const String name = 'SplashScreen';
}

/// generated route for
/// [_i2.WelcomeScreen]
class WelcomeScreen extends _i7.PageRouteInfo<void> {
  const WelcomeScreen()
      : super(
          WelcomeScreen.name,
          path: '/welcome',
        );

  static const String name = 'WelcomeScreen';
}

/// generated route for
/// [_i3.LoginScreen]
class LoginScreen extends _i7.PageRouteInfo<void> {
  const LoginScreen()
      : super(
          LoginScreen.name,
          path: '/signin',
        );

  static const String name = 'LoginScreen';
}

/// generated route for
/// [_i4.CreateAccountScreen]
class CreateAccountScreen extends _i7.PageRouteInfo<void> {
  const CreateAccountScreen()
      : super(
          CreateAccountScreen.name,
          path: '/signup',
        );

  static const String name = 'CreateAccountScreen';
}

/// generated route for
/// [_i5.DashboardView]
class DashboardView extends _i7.PageRouteInfo<DashboardViewArgs> {
  DashboardView({
    _i8.Key? key,
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

  final _i8.Key? key;

  final int initialPage;

  @override
  String toString() {
    return 'DashboardViewArgs{key: $key, initialPage: $initialPage}';
  }
}

/// generated route for
/// [_i6.EditProfileScreen]
class EditProfileScreen extends _i7.PageRouteInfo<void> {
  const EditProfileScreen()
      : super(
          EditProfileScreen.name,
          path: '/editProfile',
        );

  static const String name = 'EditProfileScreen';
}
