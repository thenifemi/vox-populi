import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../Application/theme/theme_bloc.dart';
import '../../core/theme/theme.dart';

class DarkModeWidget extends HookWidget {
  const DarkModeWidget({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData? theme;

  @override
  Widget build(BuildContext context) {
    final appTheme = BlocProvider.of<ThemeBloc>(context).appTheme;

    final bool isFalse;
    if (appTheme == AppTheme.light) {
      isFalse = false;
    } else {
      isFalse = true;
    }

    final switcher = useState(isFalse);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AutoSizeText(
          "Dark Mode?",
          style: theme?.textTheme.bodyText2,
        ),
        CupertinoSwitch(
          value: switcher.value,
          onChanged: (v) {
            switcher.value = v;
            BlocProvider.of<ThemeBloc>(context).add(
              ThemeEvent.changeTheme(
                v == true ? AppTheme.dark : AppTheme.light,
              ),
            );
          },
        ),
      ],
    );
  }
}
