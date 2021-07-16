import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../Application/theme/theme_bloc.dart';
import '../../core/constants/color_constants.dart';
import '../../core/theme/theme.dart';

class ArticleWebviewWidget extends StatefulWidget {
  const ArticleWebviewWidget({Key? key}) : super(key: key);

  @override
  _ArticleWebviewWidgetState createState() => _ArticleWebviewWidgetState();
}

class _ArticleWebviewWidgetState extends State<ArticleWebviewWidget> {
  @override
  void initState() {
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final heightSize = MediaQuery.of(context).size.height;
    final widthSize = MediaQuery.of(context).size.width;

    final appTheme = BlocProvider.of<ThemeBloc>(context).appTheme;

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: widthSize,
            padding: const EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {
                  context.router.pop();
                },
                icon: Icon(
                  Icons.cancel_rounded,
                  size: 30,
                  color: appTheme == AppTheme.light
                      ? AppColors.eggshell
                      : AppColors.grey,
                ),
              ),
            ),
          ),
          const Expanded(
            child: WebView(
              initialUrl:
                  "https://www.cbssports.com/golf/news/2021-british-open-leaderboard-live-coverage-schedule-golf-scores-today-in-round-2-on-friday/live/",
            ),
          ),
        ],
      ),
    );
  }
}
