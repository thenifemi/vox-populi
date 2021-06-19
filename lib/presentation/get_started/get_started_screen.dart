import 'package:flutter/material.dart';

import '../core/constants/image_constants.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heightSize = MediaQuery.of(context).size.height;
    final widthSize = MediaQuery.of(context).size.width;

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
          ],
        ),
      ),
    );
  }
}
