import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Application/theme/theme_bloc.dart';
import '../../core/constants/color_constants.dart';
import '../../core/theme/theme.dart';

class SigninTextfieldWidget extends StatelessWidget {
  const SigninTextfieldWidget({
    Key? key,
    this.onSaved,
    this.validator,
  }) : super(key: key);

  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    final theme = BlocProvider.of<ThemeBloc>(context).state.themeData;
    final appTheme = BlocProvider.of<ThemeBloc>(context).appTheme;

    return TextFormField(
      onSaved: onSaved,
      validator: validator,
      enabled: true,
      cursorColor:
          appTheme == AppTheme.light ? AppColors.black : AppColors.eggshell,
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.done,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      style: theme?.textTheme.bodyText2,
      decoration: InputDecoration(
        hintText: 'Just your first name',
        filled: true,
        fillColor: appTheme == AppTheme.light
            ? AppColors.eggshell
            : AppColors.greyAccent,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 20,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7.0),
        ),
        focusedBorder: const OutlineInputBorder(
          gapPadding: 0,
          borderSide: BorderSide(
            color: AppColors.greyAccent,
          ),
        ),
        errorBorder: const OutlineInputBorder(
          gapPadding: 0,
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          gapPadding: 0,
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
