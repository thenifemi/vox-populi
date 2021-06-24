import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../core/constants/color_constants.dart';

class SettingsTopWidget extends StatelessWidget {
  const SettingsTopWidget({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData? theme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          "Settings",
          style: theme?.textTheme.headline4,
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            context.router.pop();
          },
          icon: Icon(
            Icons.cancel_rounded,
            size: 30,
            color: AppColors.eggshell.withOpacity(0.3),
          ),
        ),
      ],
    );
  }
}
