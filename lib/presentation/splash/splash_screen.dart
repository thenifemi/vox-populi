import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../core/constants/image_constants.dart';
import '../get_started/get_started_screen.dart';

class SplashScreen extends HookWidget {
  const SplashScreen({Key? key}) : super(key: key);

  Future<void> navToGetStarted(BuildContext context) async {
    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const GetStartedScreen(),
        ),
      );
    });
  }

  Future rebuidAfter1Second(
    BuildContext context,
    ValueNotifier<double> imageSize,
  ) async {
    Timer(const Duration(seconds: 1), () async {
      imageSize.value = 200.0;
      await navToGetStarted(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    final heightSize = MediaQuery.of(context).size.height;

    final imageSize = useState(heightSize * 0.4);

    return FutureBuilder<dynamic>(
        future: rebuidAfter1Second(context, imageSize),
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
                    height: imageSize.value,
                    duration: const Duration(milliseconds: 800),
                    child: Image.asset(voxIconLogoBlack),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
