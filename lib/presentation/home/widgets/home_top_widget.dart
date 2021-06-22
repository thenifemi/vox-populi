import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../core/constants/image_constants.dart';
import '../../core/theme/theme.dart';

class HomeTopWidget extends StatelessWidget {
  const HomeTopWidget({
    Key? key,
    required this.appTheme,
    required this.theme,
    required this.heightSize,
  }) : super(key: key);

  final AppTheme? appTheme;
  final ThemeData? theme;
  final double heightSize;

  @override
  Widget build(BuildContext context) {
    final dateNow = DateTime.now();
    final date = DateFormat('EEEE d MMMM').format(dateNow);

    return Row(
      children: [
        Hero(
          tag: 'logo',
          child: Image.asset(
            appTheme == AppTheme.light ? voxIconLogoBlack : voxIconLogoWhite,
            height: 50,
          ),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              date.toUpperCase(),
              style: theme?.textTheme.subtitle1,
            ),
            AutoSizeText(
              "Today",
              style: theme?.textTheme.headline5,
            ),
          ],
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            man1,
            height: heightSize * 0.04,
          ),
        )
      ],
    );
  }
}
