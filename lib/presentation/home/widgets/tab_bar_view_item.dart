import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Application/theme/theme_bloc.dart';
import '../../core/constants/color_constants.dart';
import '../../core/constants/image_constants.dart';

class TabBarViewItem extends StatelessWidget {
  const TabBarViewItem({
    Key? key,
    required this.heightSize,
  }) : super(key: key);

  final double heightSize;

  @override
  Widget build(BuildContext context) {
    final theme = BlocProvider.of<ThemeBloc>(context).state.themeData;
    final appTheme = BlocProvider.of<ThemeBloc>(context).appTheme;

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: heightSize / 2,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage(testNewsImage),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.grey.withOpacity(0.8),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  "Supreme Court Restricts Police Powers To Enter A Home Without A Warrant - NPR",
                  style: theme?.textTheme.headline6,
                  minFontSize: 24,
                  maxLines: 3,
                ),
                const SizedBox(height: 10),
                AutoSizeText(
                  'NPR • Wednesday 23 June'.toUpperCase(),
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
        ],
      ),
    );
  }
}
