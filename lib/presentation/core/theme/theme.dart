import 'package:flutter/material.dart';

import '../constants/color_constants.dart';

enum AppTheme {
  light,
  dark,
}

final appThemeData = {
  AppTheme.light: ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.white,
    accentColor: AppColors.greyAccent,
    backgroundColor: AppColors.white,
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: const AppBarTheme(
      brightness: Brightness.light,
      color: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
    ),
    tabBarTheme: const TabBarTheme(
      labelColor: AppColors.eggshell,
      unselectedLabelColor: AppColors.greyAccent,
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        fontFamily: 'Ubuntu',
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
        color: AppColors.grey,
      ),
      bodyText2: TextStyle(
        fontFamily: 'Ubuntu',
        fontWeight: FontWeight.w600,
        fontSize: 18.0,
        color: AppColors.grey,
      ),
      headline6: TextStyle(
        fontFamily: 'Ubuntu',
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
        color: AppColors.grey,
      ),
      headline5: TextStyle(
        fontFamily: 'Ubuntu',
        fontWeight: FontWeight.w600,
        fontSize: 22.0,
        color: AppColors.grey,
      ),
      headline4: TextStyle(
        fontFamily: 'Ubuntu',
        fontWeight: FontWeight.w700,
        fontSize: 40.0,
        color: AppColors.grey,
      ),
    ),
  ),
  AppTheme.dark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.black,
    accentColor: AppColors.grey,
    backgroundColor: AppColors.black,
    scaffoldBackgroundColor: AppColors.black,
    appBarTheme: const AppBarTheme(
      brightness: Brightness.dark,
      color: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
    ),
    tabBarTheme: const TabBarTheme(
      labelColor: AppColors.eggshell,
      unselectedLabelColor: AppColors.greyAccent,
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        fontFamily: 'Ubuntu',
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
        color: AppColors.eggshell,
      ),
      bodyText2: TextStyle(
        fontFamily: 'Ubuntu',
        fontWeight: FontWeight.w600,
        fontSize: 18.0,
        color: AppColors.eggshell,
      ),
      headline6: TextStyle(
        fontFamily: 'Ubuntu',
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
        color: AppColors.eggshell,
      ),
      headline5: TextStyle(
        fontFamily: 'Ubuntu',
        fontWeight: FontWeight.w600,
        fontSize: 22.0,
        color: AppColors.eggshell,
      ),
      headline4: TextStyle(
        fontFamily: 'Ubuntu',
        fontWeight: FontWeight.w700,
        fontSize: 40.0,
        color: AppColors.eggshell,
      ),
    ),
  ),
};
