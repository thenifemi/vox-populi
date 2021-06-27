import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hive/hive.dart';

import '../../../Application/theme/theme_bloc.dart';
import '../../../Domain/user/user.dart';
import '../../core/components/app_button.dart';
import '../../core/constants/color_constants.dart';
import '../../core/constants/image_constants.dart';
import '../../core/theme/theme.dart';

class EditProfileWidget extends StatelessWidget {
  const EditProfileWidget({
    Key? key,
    required this.heightSize,
    required this.widthSize,
    required this.theme,
  }) : super(key: key);

  final double heightSize;
  final double widthSize;
  final ThemeData? theme;

  @override
  Widget build(BuildContext context) {
    final appTheme = BlocProvider.of<ThemeBloc>(context).appTheme;

    return FutureBuilder<Box<User>>(
      future: Hive.openBox<User>('user'),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SpinKitWave(
            color: appTheme == AppTheme.light
                ? AppColors.grey
                : AppColors.eggshell,
            size: 30,
          );
        } else if (snapshot.connectionState == ConnectionState.done) {
          final name = snapshot.data?.get(0)?.name ?? '';

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
        } else {
          return Container();
        }
      },
    );
  }
}
