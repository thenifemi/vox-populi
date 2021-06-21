import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vox_populi/Application/theme/theme_bloc.dart';
import 'package:vox_populi/presentation/core/constants/color_constants.dart';
import 'package:vox_populi/presentation/core/theme/theme.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    @required this.name,
    @required this.onPressed,
    @required this.widthSize,
  }) : super(key: key);

  final String? name;
  final void Function()? onPressed;
  final double? widthSize;

  @override
  Widget build(BuildContext context) {
    final appTheme = BlocProvider.of<ThemeBloc>(context).appTheme;

    return SizedBox(
      height: 50,
      width: widthSize,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          primary: appTheme == AppTheme.light
              ? AppColors.greyAccent
              : AppColors.eggshell,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          name!,
          style: TextStyle(
            fontFamily: 'Ubuntu',
            fontWeight: FontWeight.w600,
            fontSize: 18.0,
            color: appTheme == AppTheme.light
                ? AppColors.eggshell
                : AppColors.grey,
          ),
        ),
      ),
    );
  }
}
