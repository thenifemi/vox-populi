import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../core/constants/image_constants.dart';
import '../routes/router.gr.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

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

  Future<void> navToGetStarted() async {
    context.router.replace(const GetStartedScreenRoute());
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
    return FutureBuilder<dynamic>(
        future: rebuidAfter1Second().then(
          (value) => context.router.replace(const GetStartedScreenRoute()),
        ),
        builder: (context, snapshot) {
          return AnnotatedRegion<SystemUiOverlayStyle>(
            value: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.dark,
            ),
            child: Scaffold(
              body: Center(
                child: Hero(
                  tag: 'logo',
                  child: AnimatedContainer(
                    height: imageSize,
                    duration: const Duration(milliseconds: 800),
                    child: Image.asset(voxIconLogoBlack),
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
