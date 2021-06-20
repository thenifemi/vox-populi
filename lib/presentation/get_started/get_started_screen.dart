import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vox_populi/presentation/core/theme/theme.dart';

import '../../Application/theme/theme_bloc.dart';
import '../core/constants/image_constants.dart';
import 'widgets/get_started_bottom_widget.dart';

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
      value: 0.2,
      vsync: this,
      duration: const Duration(seconds: 1),
      reverseDuration: const Duration(seconds: 1),
    );

    _controller?.forward();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final heightSize = MediaQuery.of(context).size.height;
    final widthSize = MediaQuery.of(context).size.width;

    _controller?.forward();

    final theme = BlocProvider.of<ThemeBloc>(context).state.themeData;
    final appTheme = BlocProvider.of<ThemeBloc>(context).appTheme;

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
                      const SizedBox(height: 10),
                      AutoSizeText(
                        "Know what's\nHappening now.",
                        style: theme?.textTheme.headline4,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GetStartedBottomWidget(
              controller: _controller,
              widthSize: widthSize,
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
