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
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../../views/auth/create_account.dart' as _i3;
import '../../views/auth/login.dart' as _i2;
import '../../views/dashboard/dashboard.dart' as _i4;
import '../../views/dashboard/views/settings/profile/edit_profile.dart' as _i5;
import '../../views/splash/splash_screen.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) {
      return _i6.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    LoginScreen.name: (routeData) {
      return _i6.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginScreen(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    CreateAccountScreen.name: (routeData) {
      return _i6.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.CreateAccountScreen(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    DashboardView.name: (routeData) {
      final args = routeData.argsAs<DashboardViewArgs>(
          orElse: () => const DashboardViewArgs());
      return _i6.CustomPage<dynamic>(
        routeData: routeData,
        child: _i4.DashboardView(
          key: args.key,
          initialPage: args.initialPage,
        ),
        opaque: true,
        barrierDismissible: false,
      );
    },
    EditProfileScreen.name: (routeData) {
      return _i6.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i5.EditProfileScreen(),
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/splash',
          fullMatch: true,
        ),
        _i6.RouteConfig(
          SplashScreen.name,
          path: '/splash',
        ),
        _i6.RouteConfig(
          LoginScreen.name,
          path: '/signin',
        ),
        _i6.RouteConfig(
          CreateAccountScreen.name,
          path: '/signup',
        ),
        _i6.RouteConfig(
          DashboardView.name,
          path: '/dashboard',
        ),
        _i6.RouteConfig(
          EditProfileScreen.name,
          path: '/editProfile',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreen extends _i6.PageRouteInfo<void> {
  const SplashScreen()
      : super(
          SplashScreen.name,
          path: '/splash',
        );

  static const String name = 'SplashScreen';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreen extends _i6.PageRouteInfo<void> {
  const LoginScreen()
      : super(
          LoginScreen.name,
          path: '/signin',
        );

  static const String name = 'LoginScreen';
}

/// generated route for
/// [_i3.CreateAccountScreen]
class CreateAccountScreen extends _i6.PageRouteInfo<void> {
  const CreateAccountScreen()
      : super(
          CreateAccountScreen.name,
          path: '/signup',
        );

  static const String name = 'CreateAccountScreen';
}

/// generated route for
/// [_i4.DashboardView]
class DashboardView extends _i6.PageRouteInfo<DashboardViewArgs> {
  DashboardView({
    _i7.Key? key,
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

  final _i7.Key? key;

  final int initialPage;

  @override
  String toString() {
    return 'DashboardViewArgs{key: $key, initialPage: $initialPage}';
  }
}

/// generated route for
/// [_i5.EditProfileScreen]
class EditProfileScreen extends _i6.PageRouteInfo<void> {
  const EditProfileScreen()
      : super(
          EditProfileScreen.name,
          path: '/editProfile',
        );

  static const String name = 'EditProfileScreen';
}
