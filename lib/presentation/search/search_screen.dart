import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vox_populi/Application/news/news_bloc.dart';
import 'package:vox_populi/injection.dart';
import 'package:vox_populi/presentation/core/constants/color_constants.dart';
import 'package:vox_populi/presentation/core/theme/theme.dart';

import '../../Application/theme/theme_bloc.dart';
import '../core/components/app_annotated_widget.dart';
import '../core/constants/image_constants.dart';
import 'widgets/search_initial_widget.dart';
import 'widgets/search_textfield.dart';
import 'widgets/search_top_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heightSize = MediaQuery.of(context).size.height;
    final widthSize = MediaQuery.of(context).size.width;

    final theme = BlocProvider.of<ThemeBloc>(context).state.themeData;
    final appTheme = BlocProvider.of<ThemeBloc>(context).appTheme;

    return BlocProvider(
      create: (context) => getIt<NewsBloc>(),
      child: BlocBuilder<NewsBloc, NewsState>(
        builder: (context, state) {
          return AppAnnotatedWidget(
            appTheme: appTheme,
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              body: Container(
                height: heightSize,
                width: widthSize,
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: heightSize * 0.03),
                    SearchTopWidget(
                      theme: theme,
                      appTheme: appTheme,
                    ),
                    SizedBox(height: heightSize * 0.03),
                    SearchTextfieldWidget(
                      onSaved: (v) {},
                      validator: (v) {},
                    ),
                    SizedBox(height: heightSize * 0.03),
                    Expanded(
                      child: state.maybeMap(
                        orElse: () {},
                        initial: (_) {
                          return SearchInitialWidget(
                            theme: theme,
                            heightSize: heightSize,
                          );
                        },
                        loading: (_) {
                          return Center(
                            child: SpinKitWave(
                              size: 60,
                              color: appTheme == AppTheme.light
                                  ? AppColors.greyAccent
                                  : AppColors.eggshell,
                            ),
                          );
                        },
                        failure: failure,
                        successForSearch: successForSearch,
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
