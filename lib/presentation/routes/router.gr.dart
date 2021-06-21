// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/cupertino.dart' as _i7;
import 'package:flutter/material.dart' as _i2;

import '../get_started/get_started_screen.dart' as _i4;
import '../home/home_screen.dart' as _i6;
import '../signin/signin_screen.dart' as _i5;
import '../splash/splash_screen.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.SplashScreen();
        }),
    GetStartedScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.GetStartedScreen();
        }),
    SigninScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<SigninScreenRouteArgs>(
              orElse: () => const SigninScreenRouteArgs());
          return _i5.SigninScreen(key: args.key);
        }),
    HomeScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.HomeScreen();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i1.RouteConfig(GetStartedScreenRoute.name,
            path: '/get-started-screen'),
        _i1.RouteConfig(SigninScreenRoute.name, path: '/signin-screen'),
        _i1.RouteConfig(HomeScreenRoute.name, path: '/home-screen')
      ];
}

class SplashScreenRoute extends _i1.PageRouteInfo {
  const SplashScreenRoute() : super(name, path: '/');

  static const String name = 'SplashScreenRoute';
}

class GetStartedScreenRoute extends _i1.PageRouteInfo {
  const GetStartedScreenRoute() : super(name, path: '/get-started-screen');

  static const String name = 'GetStartedScreenRoute';
}

class SigninScreenRoute extends _i1.PageRouteInfo<SigninScreenRouteArgs> {
  SigninScreenRoute({_i7.Key? key})
      : super(name,
            path: '/signin-screen', args: SigninScreenRouteArgs(key: key));

  static const String name = 'SigninScreenRoute';
}

class SigninScreenRouteArgs {
  const SigninScreenRouteArgs({this.key});

  final _i7.Key? key;
}

class HomeScreenRoute extends _i1.PageRouteInfo {
  const HomeScreenRoute() : super(name, path: '/home-screen');

  static const String name = 'HomeScreenRoute';
}
