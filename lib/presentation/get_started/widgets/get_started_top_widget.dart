import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../core/components/app_button.dart';
import '../../core/constants/image_constants.dart';
import '../../core/theme/theme.dart';
import '../../routes/router.gr.dart';

class GetStartedTopWidget extends StatelessWidget {
  const GetStartedTopWidget({
    Key? key,
    required this.appTheme,
    required this.heightSize,
    required this.theme,
    required this.widthSize,
  }) : super(key: key);

  final AppTheme? appTheme;
  final double heightSize;
  final ThemeData? theme;
  final double widthSize;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Hero(
                  tag: 'logo',
                  child: Image.asset(
                    appTheme == AppTheme.light
                        ? voxIconLogoBlack
                        : voxIconLogoWhite,
                    height: 50,
                  ),
                ),
              ),
              SizedBox(height: heightSize * 0.03),
              AutoSizeText(
                "Know what's\nHappening now.",
                style: theme?.textTheme.headline4,
              ),
              const Spacer(),
              AutoSizeText(
                "Join Vox Populi today.",
                style: theme?.textTheme.bodyText2,
              ),
              SizedBox(height: heightSize * 0.02),
              AppButton(
                name: 'Get Started',
                onPressed: () => context.router.push(
                  const SigninScreenRoute(),
                ),
                widthSize: widthSize,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
