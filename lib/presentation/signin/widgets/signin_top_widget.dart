import 'package:flutter/material.dart';

import '../../core/constants/image_constants.dart';

class SigninTopWidget extends StatelessWidget {
  const SigninTopWidget({
    Key? key,
    required this.heightSize,
    required this.widthSize,
  }) : super(key: key);

  final double heightSize;
  final double widthSize;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'vox',
      child: Container(
        height: heightSize / 4,
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
                width: widthSize / 1,
              ),
            ),
            Center(
              child: Image.asset(
                voxLogoWhite,
                width: widthSize / 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
