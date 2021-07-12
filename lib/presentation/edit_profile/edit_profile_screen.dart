import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vox_populi/Application/theme/theme_bloc.dart';
import 'package:vox_populi/Domain/user/user.dart';
import 'package:vox_populi/presentation/core/components/app_annotated_widget.dart';

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
        body: SizedBox(height: heightSize, width: widthSize),
      ),
    );
  }
}
