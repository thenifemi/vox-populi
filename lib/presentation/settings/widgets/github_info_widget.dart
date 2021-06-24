import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class GithubInfoWidget extends StatelessWidget {
  const GithubInfoWidget({
    Key? key,
    required this.theme,
    required this.heightSize,
  }) : super(key: key);

  final ThemeData? theme;
  final double heightSize;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          AutoSizeText(
            "This project uses the News API but is NOT endorsed or certified by the News API.",
            style: theme?.textTheme.bodyText1,
          ),
          SizedBox(height: heightSize * 0.005),
          GestureDetector(
            onTap: () async {
              const url = 'https://newsapi.org/';
              if (await canLaunch(url)) {
                await launch(url);
              } else {}
            },
            child: Row(
              children: const [
                AutoSizeText(
                  "Go to the News API",
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontSize: 16.0,
                    color: Colors.blue,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 14.0,
                  color: Colors.blue,
                )
              ],
            ),
          ),
          SizedBox(height: heightSize * 0.03),
          AutoSizeText(
            "This project is Open-Source and available on GitHub.",
            style: theme?.textTheme.bodyText1,
          ),
          SizedBox(height: heightSize * 0.005),
          GestureDetector(
            onTap: () async {
              const url = 'https://github.com/thenifemi/vox-populi';
              if (await canLaunch(url)) {
                await launch(url);
              } else {}
            },
            child: Row(
              children: const [
                AutoSizeText(
                  "Go to GitHub",
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontSize: 16.0,
                    color: Colors.blue,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 14.0,
                  color: Colors.blue,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
