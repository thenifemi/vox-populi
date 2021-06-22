import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../core/constants/color_constants.dart';
import '../../core/theme/theme.dart';

class AppTabBar extends StatelessWidget {
  const AppTabBar({
    Key? key,
    required this.theme,
    required this.appTheme,
    required this.categories,
  }) : super(key: key);

  final ThemeData? theme;
  final AppTheme? appTheme;
  final List? categories;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      indicatorColor: appTheme == AppTheme.light
          ? AppColors.greyAccent
          : AppColors.eggshell,
      physics: const BouncingScrollPhysics(),
      tabs: categories!
          .map((category) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: AutoSizeText(
                  category,
                  style: theme?.textTheme.bodyText1,
                ),
              ))
          .toList(),
    );
  }
}
