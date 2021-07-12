import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../Domain/user/user.dart';
import '../../core/components/app_button.dart';
import '../../routes/router.gr.dart';

class EditProfileWidget extends StatelessWidget {
  const EditProfileWidget({
    Key? key,
    required this.heightSize,
    required this.widthSize,
    required this.theme,
    required this.profile,
  }) : super(key: key);

  final double heightSize;
  final double widthSize;
  final ThemeData? theme;
  final User profile;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Hero(
          tag: 'avatar',
          child: Image.asset(
            profile.avatar!,
            height: heightSize * 0.1,
          ),
        ),
        SizedBox(width: widthSize * 0.03),
        AutoSizeText(
          profile.name!,
          maxLines: 1,
          style: theme?.textTheme.headline5,
        ),
        const Spacer(),
        SizedBox(
          height: heightSize * 0.03,
          child: AppButton(
            name: 'Edit',
            onPressed: () {
              context.router.push(
                EditProfileScreenRoute(profile: profile),
              );
            },
            widthSize: null,
          ),
        ),
      ],
    );
  }
}
