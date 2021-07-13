import 'package:dartz/dartz.dart';

import 'enums.dart';
import 'news_failure.dart';
import 'news_headlines_response.dart';
import 'search_news_response.dart';

abstract class NewsInterface {
  Future<Either<NewsFailure, NewsHeadlinesResponse>> getNewsHeadlines({
    NewsCategory? category,
  });
  Future<Either<NewsFailure, SearchNewsResponse>> searchNews({
    String? query,
  });
}
