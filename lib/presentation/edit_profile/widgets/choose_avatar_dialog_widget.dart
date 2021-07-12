import 'package:flutter/material.dart';

void showChooseAvatarDialog(BuildContext context) {
  final heightSize = MediaQuery.of(context).size.height;
  final widthSize = MediaQuery.of(context).size.width;

  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        insetPadding: const EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        content: SizedBox(
          height: heightSize / 2,
          width: widthSize,
        ),
      );
    },
  );
}
