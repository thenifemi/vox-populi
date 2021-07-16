// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../Domain/news/article.dart' as _i13;
import '../../Domain/user/user.dart' as _i12;
import '../article/article_screen.dart' as _i11;
import '../edit_profile/edit_profile_screen.dart' as _i9;
import '../get_started/get_started_screen.dart' as _i4;
import '../home/home_screen.dart' as _i6;
import '../search/search_screen.dart' as _i10;
import '../settings/settings_screen.dart' as _i7;
import '../settings/widgets/signout_screen.dart' as _i8;
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
          return _i6.HomeScreen();
        }),
    SettingsScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<SettingsScreenRouteArgs>();
          return _i7.SettingsScreen(key: args.key, profile: args.profile);
        }),
    SignoutScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i8.SignoutScreen();
        }),
    EditProfileScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<EditProfileScreenRouteArgs>();
          return _i9.EditProfileScreen(key: args.key, profile: args.profile);
        }),
    SearchScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i10.SearchScreen();
        },
        fullscreenDialog: true),
    ArticleScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ArticleScreenRouteArgs>(
              orElse: () => const ArticleScreenRouteArgs());
          return _i11.ArticleScreen(key: args.key, article: args.article);
        },
        fullscreenDialog: true)
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i1.RouteConfig(GetStartedScreenRoute.name,
            path: '/get-started-screen'),
        _i1.RouteConfig(SigninScreenRoute.name, path: '/signin-screen'),
        _i1.RouteConfig(HomeScreenRoute.name, path: '/home-screen'),
        _i1.RouteConfig(SettingsScreenRoute.name, path: '/settings-screen'),
        _i1.RouteConfig(SignoutScreenRoute.name, path: '/signout-screen'),
        _i1.RouteConfig(EditProfileScreenRoute.name,
            path: '/edit-profile-screen'),
        _i1.RouteConfig(SearchScreenRoute.name, path: '/search-screen'),
        _i1.RouteConfig(ArticleScreenRoute.name, path: '/article-screen')
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
  SigninScreenRoute({_i2.Key? key})
      : super(name,
            path: '/signin-screen', args: SigninScreenRouteArgs(key: key));

  static const String name = 'SigninScreenRoute';
}

class SigninScreenRouteArgs {
  const SigninScreenRouteArgs({this.key});

  final _i2.Key? key;
}

class HomeScreenRoute extends _i1.PageRouteInfo {
  const HomeScreenRoute() : super(name, path: '/home-screen');

  static const String name = 'HomeScreenRoute';
}

class SettingsScreenRoute extends _i1.PageRouteInfo<SettingsScreenRouteArgs> {
  SettingsScreenRoute({_i2.Key? key, required _i12.User profile})
      : super(name,
            path: '/settings-screen',
            args: SettingsScreenRouteArgs(key: key, profile: profile));

  static const String name = 'SettingsScreenRoute';
}

class SettingsScreenRouteArgs {
  const SettingsScreenRouteArgs({this.key, required this.profile});

  final _i2.Key? key;

  final _i12.User profile;
}

class SignoutScreenRoute extends _i1.PageRouteInfo {
  const SignoutScreenRoute() : super(name, path: '/signout-screen');

  static const String name = 'SignoutScreenRoute';
}

class EditProfileScreenRoute
    extends _i1.PageRouteInfo<EditProfileScreenRouteArgs> {
  EditProfileScreenRoute({_i2.Key? key, required _i12.User profile})
      : super(name,
            path: '/edit-profile-screen',
            args: EditProfileScreenRouteArgs(key: key, profile: profile));

  static const String name = 'EditProfileScreenRoute';
}

class EditProfileScreenRouteArgs {
  const EditProfileScreenRouteArgs({this.key, required this.profile});

  final _i2.Key? key;

  final _i12.User profile;
}

class SearchScreenRoute extends _i1.PageRouteInfo {
  const SearchScreenRoute() : super(name, path: '/search-screen');

  static const String name = 'SearchScreenRoute';
}

class ArticleScreenRoute extends _i1.PageRouteInfo<ArticleScreenRouteArgs> {
  ArticleScreenRoute({_i2.Key? key, _i13.Article? article})
      : super(name,
            path: '/article-screen',
            args: ArticleScreenRouteArgs(key: key, article: article));

  static const String name = 'ArticleScreenRoute';
}

class ArticleScreenRouteArgs {
  const ArticleScreenRouteArgs({this.key, this.article});

  final _i2.Key? key;

  final _i13.Article? article;
}
