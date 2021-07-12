import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vox_populi/presentation/core/components/app_button.dart';

import '../../Application/theme/theme_bloc.dart';
import '../../Domain/user/user.dart';
import '../core/components/app_annotated_widget.dart';
import '../core/constants/image_constants.dart';
import 'widgets/edit_profile_top_widget.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({
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
        body: Container(
          height: heightSize,
          width: widthSize,
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              SizedBox(height: heightSize * 0.03),
              EditProfileTopWidget(
                theme: theme,
                appTheme: appTheme,
              ),
              SizedBox(height: heightSize * 0.06),
              Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Hero(
                    tag: 'avatar',
                    child: Image.asset(
                      man1,
                      height: heightSize * 0.18,
                    ),
                  ),
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
