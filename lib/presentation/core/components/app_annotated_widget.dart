import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme/theme.dart';

class AppAnnotatedWidget extends StatelessWidget {
  const AppAnnotatedWidget({
    Key? key,
    required this.child,
    required this.appTheme,
  }) : super(key: key);

  final Widget? child;
  final AppTheme? appTheme;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness:
            appTheme == AppTheme.light ? Brightness.dark : Brightness.light,
      ),
      child: child!,
    );
  }
}
