import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../core/constants/color_constants.dart';
import '../../core/theme/theme.dart';

class SavedArticlesWidget extends StatelessWidget {
  const SavedArticlesWidget({
    Key? key,
    required this.appTheme,
    required this.theme,
  }) : super(key: key);

  final AppTheme? appTheme;
  final ThemeData? theme;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onPressed: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 20,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.3,
            color: appTheme == AppTheme.light
                ? AppColors.greyAccent
                : AppColors.eggshell,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Icon(
              Icons.bookmark_rounded,
              color: appTheme == AppTheme.light
                  ? AppColors.greyAccent
                  : AppColors.eggshell,
            ),
            const SizedBox(width: 5),
            AutoSizeText(
              "Saved articles",
              style: theme?.textTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }
}
