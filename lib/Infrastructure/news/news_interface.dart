import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../Domain/news/enums.dart';
import '../../Domain/news/news_failure.dart';
import '../../Domain/news/news_headlines_response.dart';
import '../../Domain/news/news_interface.dart';
import '../../Domain/news/search_news_response.dart';

@LazySingleton(as: NewsInterface)
class NewsRepository implements NewsInterface {
  @override
  Future<Either<NewsFailure, NewsHeadlinesResponse>> getNewsHeadlines({
    NewsCategory? category,
  }) async {
    // TODO: implement getNewsHeadlines
    throw UnimplementedError();
  }

  @override
  Future<Either<NewsFailure, SearchNewsResponse>> searchNews({
    String? query,
  }) async {
    // TODO: implement searchNews
    throw UnimplementedError();
  }
}
