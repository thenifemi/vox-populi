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
  ),
  AppTheme.dark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.black,
  ),
};
