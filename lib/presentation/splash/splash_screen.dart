import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../Application/theme/theme_bloc.dart';
import '../../Domain/user/user.dart';
import '../core/components/app_annotated_widget.dart';
import '../core/constants/image_constants.dart';
import '../core/theme/theme.dart';
import '../routes/router.gr.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double? imageSize;

  @override
  void initState() {
    imageSize = 400;
    super.initState();
  }

  Future rebuidAfter1Second() async {
    return Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        imageSize = 200.0;
      });
    }).then((value) => Future.delayed(
          const Duration(seconds: 1),
          () {},
        ));
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = BlocProvider.of<ThemeBloc>(context).appTheme;

    return FutureBuilder<dynamic>(
        future: rebuidAfter1Second().then(
          (_) async {
            final userBox = await Hive.openBox<User>('user');
            if (userBox.isEmpty) {
              context.router.replace(const GetStartedScreenRoute());
            } else {
              context.router.replace(const HomeScreenRoute());
            }
          },
        ),
        builder: (context, snapshot) {
          return AppAnnotatedWidget(
            appTheme: appTheme,
            child: Scaffold(
              body: Center(
                child: Hero(
                  tag: 'logo',
                  child: AnimatedContainer(
                    height: imageSize,
                    duration: const Duration(milliseconds: 800),
                    child: Image.asset(
                      appTheme == AppTheme.light
                          ? voxIconLogoBlack
                          : voxIconLogoWhite,
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }

  @override
  void dispose() {
    super.dispose();
  }
}
