import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../core/constants/image_constants.dart';
import '../get_started/get_started_screen.dart';

class SplashScreen extends HookWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heightSize = MediaQuery.of(context).size.height;

    final imageSize = useState(heightSize * 0.4);

    Future<void> navToGetStarted() async {
      Timer(const Duration(seconds: 1), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const GetStartedScreen(),
          ),
        );
      });
    }

    Future rebuidAfter1Second() async {
      Timer(const Duration(seconds: 1), () async {
        imageSize.value = 200.0;
        await navToGetStarted();
      });
    }

    return FutureBuilder<dynamic>(
        future: rebuidAfter1Second(),
        builder: (context, snapshot) {
          return AnnotatedRegion<SystemUiOverlayStyle>(
            value: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.dark,
            ),
            child: Scaffold(
              body: Center(
                child: AnimatedContainer(
                  height: imageSize.value,
                  duration: const Duration(milliseconds: 800),
                  child: Image.asset(voxIconLogoBlack),
                ),
              ),
            ),
          );
        });
  }
}
