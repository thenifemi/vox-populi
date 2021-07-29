import 'dart:io';

import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../Application/theme/theme_bloc.dart';
import '../../core/constants/color_constants.dart';
import '../../core/constants/image_constants.dart';
import '../../core/theme/theme.dart';

class ArticleWebviewWidget extends StatefulWidget {
  const ArticleWebviewWidget({
    Key? key,
    required this.fullArticleLink,
  }) : super(key: key);

  final String fullArticleLink;

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
          SizedBox(height: heightSize * 0.03),
          Container(
            width: widthSize,
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  appTheme == AppTheme.light
                      ? voxTextLogoBlack
                      : voxTextLogoWhite,
                  height: 50,
                ),
                IconButton(
                  onPressed: () {
                    context.router.pop();
                  },
                  icon: Icon(
                    Icons.cancel_rounded,
                    size: 30,
                    color: appTheme == AppTheme.dark
                        ? AppColors.eggshell
                        : AppColors.grey,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: WebView(
              initialUrl: widget.fullArticleLink,
              navigationDelegate: (NavigationRequest request) {
                Flushbar(
                  message: 'Sorry! You can not navigate out of this page.',
                  icon: const Icon(
                    Icons.warning_rounded,
                    color: Colors.red,
                    size: 24.0,
                  ),
                  borderRadius: BorderRadius.circular(12),
                  flushbarPosition: FlushbarPosition.TOP,
                  flushbarStyle: FlushbarStyle.FLOATING,
                  duration: const Duration(seconds: 6),
                  margin: const EdgeInsets.all(20),
                ).show(context);

                return NavigationDecision.prevent;
              },
            ),
          ),
        ],
      ),
    );
  }
}
