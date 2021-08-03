import 'package:flutter/material.dart';

import '../../../Domain/news/search_news_response.dart';
import '../../home/widgets/tab_bar_view_item.dart';

class SearchSuccessWidget extends StatelessWidget {
  const SearchSuccessWidget({
    Key? key,
    required this.searchResponse,
  }) : super(key: key);

  final SearchNewsResponse searchResponse;

  @override
  Widget build(BuildContext context) {
    final heightSize = MediaQuery.of(context).size.height;

    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: searchResponse.articles?.length,
      padding: const EdgeInsets.all(0),
      itemBuilder: (context, i) {
        return TabBarViewItem(
          article: searchResponse.articles![i]!,
          heightSize: heightSize,
        );
      },
    );
  }
}
