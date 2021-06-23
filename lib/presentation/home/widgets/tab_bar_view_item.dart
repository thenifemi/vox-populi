import 'package:flutter/material.dart';

import '../../core/constants/image_constants.dart';

class TabBarViewItem extends StatelessWidget {
  const TabBarViewItem({
    Key? key,
    required this.heightSize,
  }) : super(key: key);

  final double heightSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Stack(
        children: [
          Container(
            height: heightSize / 2,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage(testNewsImage),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
