import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../core/constants/image_constants.dart';

class SplashScreen extends HookWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heightSize = MediaQuery.of(context).size.height;

    final imageSize = useState(heightSize * 0.4);

    Future rebuidAfter1Second() async {
      Timer(const Duration(seconds: 1), () {
        imageSize.value = 200.0;
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
