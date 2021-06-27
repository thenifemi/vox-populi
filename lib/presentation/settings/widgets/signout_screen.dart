import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../../Application/theme/theme_bloc.dart';
import '../../../Domain/user/user.dart';
import '../../core/components/app_annotated_widget.dart';
import '../../core/components/app_button.dart';
import '../../routes/router.gr.dart';

class SignoutScreen extends StatelessWidget {
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText(
                "Are you sure you want to sign out?",
                style: theme?.textTheme.headline5,
              ),
              SizedBox(height: heightSize * 0.01),
              AutoSizeText(
                "By signing out, you delete your personal data and your saved articles from this device.",
                style: theme?.textTheme.bodyText1,
              ),
              SizedBox(height: heightSize * 0.02),
              Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  height: 40,
                  child: AppButton(
                    name: 'Yes, Sign out.',
                    onPressed: () async {
                      userBox.deleteFromDisk();
                      context.router.removeUntil((route) => false);
                      context.router.replace(
                        const SplashScreenRoute(),
                      );
                    },
                    widthSize: null,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
