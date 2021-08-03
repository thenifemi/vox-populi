import 'package:flutter/material.dart';

import '../../../Domain/news/search_news_response.dart';

class SearchSuccessWidget extends StatelessWidget {
  const SearchSuccessWidget({
    Key? key,
    required this.searchResponse,
  }) : super(key: key);

  final SearchNewsResponse searchResponse;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(),
        ),
        const SizedBox(
          height: 50,
        )
      ],
    );
  }
}
