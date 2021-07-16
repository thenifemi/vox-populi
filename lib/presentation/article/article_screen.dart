import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Application/theme/theme_bloc.dart';
import '../core/components/app_annotated_widget.dart';
import '../core/constants/color_constants.dart';
import '../core/constants/image_constants.dart';
import '../core/theme/theme.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heightSize = MediaQuery.of(context).size.height;
    final widthSize = MediaQuery.of(context).size.width;

    final theme = BlocProvider.of<ThemeBloc>(context).state.themeData;
    final appTheme = BlocProvider.of<ThemeBloc>(context).appTheme;

    return AppAnnotatedWidget(
      appTheme: appTheme,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: heightSize,
          width: widthSize,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Hero(
                    tag: 'article-image',
                    child: Container(
                      height: heightSize / 3.5,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(testNewsImage),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: heightSize / 3.5,
                    color: AppColors.greyAccent.withOpacity(0.4),
                    child: ClipRRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 30.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
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
                              SizedBox(height: heightSize * 0.015),
                              AutoSizeText(
                                'NPR • Wednesday 23 June'.toUpperCase(),
                                style: theme?.textTheme.subtitle2,
                              ),
                              const SizedBox(height: 10),
                              AutoSizeText(
                                "Supreme Court Restricts Police Powers To Enter A Home Without A Warrant - NPR",
                                style: theme?.textTheme.headline6,
                                minFontSize: 24,
                                maxLines: 3,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
