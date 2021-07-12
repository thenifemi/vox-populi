import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:vox_populi/Domain/user/user.dart';

import '../../core/constants/image_constants.dart';
import '../../core/theme/theme.dart';
import '../../routes/router.gr.dart';

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

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0),
      child: Row(
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
            onTap: () async {
              final profileBox = await Hive.openBox<User>('user');
              final profile = profileBox.get(0);

              context.router.push(SettingsScreenRoute(
                profile: profile!,
              ));
            },
            child: Hero(
              tag: 'avatar',
              child: Image.asset(
                man1,
                height: heightSize * 0.04,
              ),
            ),
          )
        ],
      ),
    );
  }
}
