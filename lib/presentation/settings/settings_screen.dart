import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:vox_populi/presentation/core/components/app_button.dart';

import '../../Application/theme/theme_bloc.dart';
import '../../Domain/user/user.dart';
import '../core/components/app_annotated_widget.dart';
import '../core/constants/color_constants.dart';
import '../core/constants/image_constants.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heightSize = MediaQuery.of(context).size.height;
    final widthSize = MediaQuery.of(context).size.width;

    final theme = BlocProvider.of<ThemeBloc>(context).state.themeData;
    final appTheme = BlocProvider.of<ThemeBloc>(context).appTheme;

    final userBox = Hive.box<User>('user');

    return AppAnnotatedWidget(
      appTheme: appTheme,
      child: Scaffold(
        body: Container(
          height: heightSize,
          width: widthSize,
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: heightSize * 0.03),
              Row(
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
              ),
              SizedBox(height: heightSize * 0.03),
              Row(
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
                    userBox.get(0)!.name!,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}