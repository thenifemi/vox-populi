import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../../../Domain/user/user.dart';
import '../../core/components/app_button.dart';
import '../../core/constants/image_constants.dart';

class EditProfileWidget extends StatelessWidget {
  const EditProfileWidget({
    Key? key,
    required this.heightSize,
    required this.widthSize,
    required this.userBox,
    required this.theme,
  }) : super(key: key);

  final double heightSize;
  final double widthSize;
  final Box<User?> userBox;
  final ThemeData? theme;

  @override
  Widget build(BuildContext context) {
    final name = userBox.get(0)!.name ?? '';

    return Row(
      children: [
        Hero(
          tag: 'avatar',
          child: Image.asset(
            man1,
            height: heightSize * 0.1,
          ),
        ),
        SizedBox(width: widthSize * 0.03),
        AutoSizeText(
          name,
          maxLines: 1,
          style: theme?.textTheme.headline5,
        ),
        const Spacer(),
        SizedBox(
          height: heightSize * 0.03,
          child: AppButton(
            name: 'Edit',
            onPressed: () {},
            widthSize: null,
          ),
        ),
      ],
    );
  }
}
