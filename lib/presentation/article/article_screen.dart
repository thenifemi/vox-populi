import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../../Application/theme/theme_bloc.dart';
import '../../Domain/news/article.dart';
import '../core/components/app_annotated_widget.dart';
import '../core/constants/color_constants.dart';
import '../core/constants/image_constants.dart';
import '../core/theme/theme.dart';
import '../routes/router.gr.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({Key? key, this.article}) : super(key: key);

  final Article? article;

  @override
  Widget build(BuildContext context) {
    final heightSize = MediaQuery.of(context).size.height;
    final widthSize = MediaQuery.of(context).size.width;

    final theme = BlocProvider.of<ThemeBloc>(context).state.themeData;
    final appTheme = BlocProvider.of<ThemeBloc>(context).appTheme;

    final pos = article?.content?.lastIndexOf('[');
    final date = DateFormat('EEEE d MMMM').format(article!.publishedAt!);

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
                    tag: article!.title!,
                    child: Container(
                      height: heightSize / 2.5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            article?.urlToImage ?? emptyImage,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 30.0,
                      horizontal: 10,
                    ),
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
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      '${article?.source?.name} • $date'.toUpperCase(),
                      style: theme?.textTheme.subtitle2,
                    ),
                    const SizedBox(height: 10),
                    AutoSizeText(
                      article!.title!,
                      style: theme?.textTheme.headline6,
                      minFontSize: 24,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 10),
                    AutoSizeText(
                      article?.content?.substring(0, pos) ??
                          'No content available.',
                      style: theme?.textTheme.subtitle1,
                      minFontSize: 20,
                    ),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.topRight,
                      child: RawMaterialButton(
                        onPressed: () => context.router.push(
                          ArticleWebviewWidgetRoute(
                            fullArticleLink: article!.url!,
                          ),
                        ),
                        child: const AutoSizeText(
                          "Read entire article",
                          style: TextStyle(
                            fontFamily: 'Ubuntu',
                            fontSize: 16.0,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
