import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../../Application/news/news_bloc.dart';
import '../../Application/theme/theme_bloc.dart';
import '../../Domain/news/enums.dart';
import '../../injection.dart';
import '../core/components/app_annotated_widget.dart';
import '../core/constants/color_constants.dart';
import '../core/constants/image_constants.dart';
import '../core/theme/theme.dart';
import 'widgets/app_tab_bar.dart';
import 'widgets/home_top_widget.dart';
import 'widgets/tab_bar_view_item.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heightSize = MediaQuery.of(context).size.height;
    final widthSize = MediaQuery.of(context).size.width;

    final theme = BlocProvider.of<ThemeBloc>(context).state.themeData;
    final appTheme = BlocProvider.of<ThemeBloc>(context).appTheme;

    final headlineList = NewsCategory.values
        .map((category) => toBeginningOfSentenceCase(
              newsCategoryToString(category),
            ))
        .toList();

    return AppAnnotatedWidget(
      appTheme: appTheme,
      child: Scaffold(
        body: Container(
          height: heightSize,
          width: widthSize,
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
          child: Column(
            children: [
              SizedBox(height: heightSize * 0.03),
              HomeTopWidget(
                appTheme: appTheme,
                theme: theme,
                heightSize: heightSize,
              ),
              SizedBox(height: heightSize * 0.01),
              Expanded(
                child: DefaultTabController(
                  length: headlineList.length,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppTabBar(
                        theme: theme,
                        appTheme: appTheme,
                        categories: headlineList,
                      ),
                      SizedBox(height: heightSize * 0.02),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: AutoSizeText(
                          "Top headlines",
                          style: theme?.textTheme.headline5,
                        ),
                      ),
                      SizedBox(height: heightSize * 0.01),
                      Expanded(
                        child: TabBarView(
                          physics: const BouncingScrollPhysics(),
                          children: headlineList
                              .map((category) => BlocProvider(
                                    create: (context) => getIt<NewsBloc>()
                                      ..add(NewsEvent.getNewsHeadlines(
                                        category!,
                                      )),
                                    child: BlocBuilder<NewsBloc, NewsState>(
                                      builder: (context, state) {
                                        return state.maybeMap(
                                          orElse: () {
                                            return Center(
                                              child: Image.asset(
                                                appTheme == AppTheme.light
                                                    ? voxIconLogoBlack
                                                    : voxIconLogoWhite,
                                              ),
                                            );
                                          },
                                          loading: (_) {
                                            return Center(
                                              child: SpinKitWave(
                                                size: 60,
                                                color:
                                                    appTheme == AppTheme.light
                                                        ? AppColors.greyAccent
                                                        : AppColors.eggshell,
                                              ),
                                            );
                                          },
                                          successForNews: (result) {
                                            final newsHeadlinesResponse =
                                                result.newsHeadlinesResponse;
                                            print(
                                                newsHeadlinesResponse.toJson());

                                            return ListView.builder(
                                              physics:
                                                  const BouncingScrollPhysics(),
                                              itemCount: newsHeadlinesResponse
                                                  .articles?.length,
                                              padding: const EdgeInsets.all(0),
                                              itemBuilder: (context, i) {
                                                return TabBarViewItem(
                                                  article: newsHeadlinesResponse
                                                      .articles![i]!,
                                                  heightSize: heightSize,
                                                );
                                              },
                                            );
                                          },
                                          failure: (result) {
                                            print("BRUH!");
                                            return Center(
                                              child: SvgPicture.asset(
                                                errorVectorImage,
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
