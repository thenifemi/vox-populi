import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../Application/theme/theme_bloc.dart';
import '../../../Domain/news/article.dart';
import '../../core/constants/color_constants.dart';
import '../../core/constants/image_constants.dart';
import '../../routes/router.gr.dart';

class TabBarViewItem extends StatefulWidget {
  const TabBarViewItem({
    Key? key,
    required this.article,
    required this.heightSize,
  }) : super(key: key);

  final Article article;
  final double heightSize;

  @override
  _TabBarViewItemState createState() => _TabBarViewItemState();
}

class _TabBarViewItemState extends State<TabBarViewItem>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    final theme = BlocProvider.of<ThemeBloc>(context).state.themeData;

    final date = DateFormat('EEEE d MMMM').format(widget.article.publishedAt!);

    return GestureDetector(
      onTap: () {
        context.router.push(ArticleScreenRoute(
          article: widget.article,
        ));
      },
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Container(
              height: widget.heightSize / 2.6,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(widget.article.urlToImage ?? emptyImage),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: AppColors.greyAccent,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          widget.article.title!,
                          style: theme?.textTheme.headline6,
                          minFontSize: 24,
                          maxLines: 3,
                        ),
                        const SizedBox(height: 10),
                        AutoSizeText(
                          '${widget.article.source?.name} • $date'
                              .toUpperCase(),
                          style: theme?.textTheme.subtitle2,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Tooltip(
                            message: 'Save this article',
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.bookmark_outline_rounded,
                                color: AppColors.eggshell,
                                size: 30,
                              ),
                            ),
                          ),
                        )
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
  bool get wantKeepAlive => true;
}
