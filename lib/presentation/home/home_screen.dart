import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Application/theme/theme_bloc.dart';
import '../core/components/app_annotated_widget.dart';
import 'widgets/home_top_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: heightSize * 0.03),
              HomeTopWidget(
                appTheme: appTheme,
                theme: theme,
                heightSize: heightSize,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
