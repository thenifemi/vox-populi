import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/constants/image_constants.dart';

class SearchInitialWidget extends StatelessWidget {
  const SearchInitialWidget({
    Key? key,
    required this.theme,
    required this.heightSize,
  }) : super(key: key);

  final ThemeData? theme;
  final double heightSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AutoSizeText(
          "Search thousands of articles from around the world.",
          style: theme?.textTheme.headline5,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: heightSize * 0.03),
        SizedBox(
          height: heightSize * 0.3,
          child: SvgPicture.asset(
            searchVectorImage,
          ),
        ),
      ],
    );
  }
}
