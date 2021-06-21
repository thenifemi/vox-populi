import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Application/theme/theme_bloc.dart';
import '../core/constants/image_constants.dart';
import '../core/theme/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heightSize = MediaQuery.of(context).size.height;
    final widthSize = MediaQuery.of(context).size.width;

    final theme = BlocProvider.of<ThemeBloc>(context).state.themeData;
    final appTheme = BlocProvider.of<ThemeBloc>(context).appTheme;

    return Container(
      height: heightSize,
      width: widthSize,
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          Row(
            children: [
              Hero(
                tag: 'logo',
                child: Image.asset(
                  appTheme == AppTheme.light
                      ? voxIconLogoBlack
                      : voxIconLogoWhite,
                  height: 50,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                children: [
                  AutoSizeText(
                    "monday 21 June".toUpperCase(),
                    style: theme?.textTheme.bodyText2,
                  ),
                  AutoSizeText(
                    "Today",
                    style: theme?.textTheme.headline4,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
