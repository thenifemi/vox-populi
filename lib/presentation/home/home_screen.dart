import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Application/theme/theme_bloc.dart';
import '../core/components/app_annotated_widget.dart';
import '../core/constants/color_constants.dart';
import '../core/constants/image_constants.dart';
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

    final _tempHealineList = [
      'General',
      'Politics',
      'Technology',
      'Health',
      'Entertainment',
      'Sports',
      'Business',
    ];

    return AppAnnotatedWidget(
      appTheme: appTheme,
      child: Scaffold(
        body: Stack(
          children: [
            Container(
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
                      length: _tempHealineList.length,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppTabBar(
                            theme: theme,
                            appTheme: appTheme,
                            categories: _tempHealineList,
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
                                children: _tempHealineList
                                    .map((e) => ListView.builder(
                                          physics:
                                              const BouncingScrollPhysics(),
                                          itemCount: 5,
                                          padding: const EdgeInsets.all(0),
                                          itemBuilder: (context, i) {
                                            return TabBarViewItem(
                                              heightSize: heightSize,
                                            );
                                          },
                                        ))
                                    .toList()),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: heightSize * 0.1,
                color: Colors.transparent,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Container(
                            padding: const EdgeInsets.only(bottom: 6.0),
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  width: 2,
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                            child: SvgPicture.asset(
                              dashboardIcon,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            searchIcon,
                            color: AppColors.white,
                          ),
                        ),
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
}
