import 'package:dartz/dartz.dart';

import 'news_failure.dart';
import 'news_headlines_response.dart';
import 'search_news_response.dart';

abstract class NewsInterface {
  Future<Either<NewsFailure, NewsHeadlinesResponse>> getNewsHeadlines({
    String? category,
  });
  Future<Either<NewsFailure, SearchNewsResponse>> searchNews({
    String? query,
    int? page,
  });
}
