import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Application/theme/theme_bloc.dart';
import '../../Domain/user/user.dart';
import '../core/components/app_annotated_widget.dart';
import '../core/components/app_button.dart';
import '../routes/router.gr.dart';
import 'widgets/dark_mode_widget.dart';
import 'widgets/edit_profile_widget.dart';
import 'widgets/github_info_widget.dart';
import 'widgets/saved_articles_widget.dart';
import 'widgets/settings_top_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({
    Key? key,
    required this.profile,
  }) : super(key: key);

  final User profile;

  @override
  Widget build(BuildContext context) {
    final heightSize = MediaQuery.of(context).size.height;
    final widthSize = MediaQuery.of(context).size.width;

    final theme = BlocProvider.of<ThemeBloc>(context).state.themeData;
    final appTheme = BlocProvider.of<ThemeBloc>(context).appTheme;

    return AppAnnotatedWidget(
      appTheme: appTheme,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: heightSize,
          width: widthSize,
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: heightSize * 0.03),
              SettingsTopWidget(
                theme: theme,
                appTheme: appTheme,
              ),
              SizedBox(height: heightSize * 0.03),
              EditProfileWidget(
                heightSize: heightSize,
                widthSize: widthSize,
                theme: theme,
                profile: profile,
              ),
              SizedBox(height: heightSize * 0.03),
              DarkModeWidget(theme: theme),
              SizedBox(height: heightSize * 0.03),
              SavedArticlesWidget(
                appTheme: appTheme,
                theme: theme,
              ),
              const Spacer(),
              GithubInfoWidget(
                theme: theme,
                heightSize: heightSize,
              ),
              SizedBox(height: heightSize * 0.03),
              Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  height: 40,
                  child: AppButton(
                    name: 'Sign out',
                    onPressed: () async {
                      context.router.push(
                        const SignoutScreenRoute(),
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
