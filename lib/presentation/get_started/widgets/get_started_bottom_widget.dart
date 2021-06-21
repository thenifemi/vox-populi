import 'package:animations/animations.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

import '../../core/constants/image_constants.dart';

class GetStartedBottomWidget extends StatelessWidget {
  const GetStartedBottomWidget({
    Key? key,
    required AnimationController? controller,
    required this.widthSize,
  })  : _controller = controller,
        super(key: key);

  final AnimationController? _controller;
  final double widthSize;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AnimatedBuilder(
        animation: _controller!,
        builder: (context, child) => FadeScaleTransition(
          animation: _controller!,
          child: child,
        ),
        child: Visibility(
          visible: _controller?.status != AnimationStatus.dismissed,
          child: Hero(
            tag: 'vox',
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
    );
  }
}
