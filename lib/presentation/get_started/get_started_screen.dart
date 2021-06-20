import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

import '../core/constants/image_constants.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  _GetStartedScreenState createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;

  @override
  void initState() {
    _controller = AnimationController(
      value: 0,
      vsync: this,
      duration: const Duration(seconds: 1),
      reverseDuration: const Duration(seconds: 2),
    );

    _controller?.forward();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final heightSize = MediaQuery.of(context).size.height;
    final widthSize = MediaQuery.of(context).size.width;

    _controller?.forward();

    return Scaffold(
      body: SizedBox(
        height: heightSize,
        width: widthSize,
        child: Column(
          children: [
            SizedBox(height: heightSize * 0.03),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Hero(
                        tag: 'logo',
                        child: Image.asset(
                          voxIconLogoBlack,
                          height: 50,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: AnimatedBuilder(
                animation: _controller!,
                builder: (context, child) => FadeScaleTransition(
                  animation: _controller!,
                  child: child,
                ),
                child: Visibility(
                  visible: _controller?.status != AnimationStatus.dismissed,
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          getStartedBottomBg,
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: Image.asset(
                            voxLogoBlack,
                            width: widthSize / 1.26,
                          ),
                        ),
                        Center(
                          child: Image.asset(
                            voxLogoWhite,
                            width: widthSize / 1.2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }
}
