import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Application/theme/theme_bloc.dart';
import '../../core/constants/color_constants.dart';
import '../../core/theme/theme.dart';

class SearchTextfieldWidget extends StatelessWidget {
  const SearchTextfieldWidget({
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
      autofocus: true,
      enabled: true,
      cursorColor:
          appTheme == AppTheme.light ? AppColors.black : AppColors.eggshell,
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.search,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textCapitalization: TextCapitalization.words,
      style: theme?.textTheme.bodyText2,
      decoration: InputDecoration(
        hintText: 'Search any topic',
        filled: true,
        suffixIcon: Icon(
          Icons.search_rounded,
          color: appTheme == AppTheme.light
              ? AppColors.greyAccent
              : AppColors.eggshell,
        ),
        fillColor: appTheme == AppTheme.light
            ? AppColors.eggshell
            : AppColors.greyAccent,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7.0),
        ),
        focusedBorder: OutlineInputBorder(
          gapPadding: 0,
          borderRadius: BorderRadius.circular(7.0),
          borderSide: const BorderSide(
            color: AppColors.greyAccent,
          ),
        ),
        errorBorder: OutlineInputBorder(
          gapPadding: 0,
          borderRadius: BorderRadius.circular(7.0),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          gapPadding: 0,
          borderRadius: BorderRadius.circular(7.0),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
