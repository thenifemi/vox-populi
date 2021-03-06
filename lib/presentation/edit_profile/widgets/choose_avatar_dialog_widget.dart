import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Application/theme/theme_bloc.dart';
import '../../core/constants/color_constants.dart';
import '../../core/constants/image_constants.dart';
import '../../core/theme/theme.dart';

Future<String> showChooseAvatarDialog(BuildContext context) async {
  final heightSize = MediaQuery.of(context).size.height;
  final widthSize = MediaQuery.of(context).size.width;

  final theme = BlocProvider.of<ThemeBloc>(context).state.themeData;
  final appTheme = BlocProvider.of<ThemeBloc>(context).appTheme;

  final List<String> avatarList = [
    man1,
    woman3,
    woman2,
    man2,
    man3,
    woman1,
  ];

  return await showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return WillPopScope(
        onWillPop: () async => false,
        child: AlertDialog(
          insetPadding: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          content: SizedBox(
            height: heightSize / 1.6,
            width: widthSize,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      "Choose avatar",
                      style: theme?.textTheme.headline4,
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context, '');
                      },
                      icon: Icon(
                        Icons.cancel_rounded,
                        size: 30,
                        color: appTheme == AppTheme.light
                            ? AppColors.greyAccent
                            : AppColors.eggshell.withOpacity(0.3),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: heightSize * 0.02),
                Expanded(
                  child: GridView.builder(
                    itemCount: avatarList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.pop(context, avatarList[index]);
                        },
                        child: Hero(
                          tag: 'hero',
                          child: Image.asset(
                            avatarList[index],
                            height: heightSize * 0.1,
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}
