import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../../Domain/news/enums.dart';
import '../../Domain/news/news_failure.dart';
import '../../Domain/news/news_headlines_response.dart';
import '../../Domain/news/news_interface.dart';
import '../../Domain/news/search_news_response.dart';
import '../core/credentials.dart';

@LazySingleton(as: NewsInterface)
class NewsRepository implements NewsInterface {
  //? The [apikey] is stored in the ../core/credentials.dart file...
  //? Check Readme file on how to get your own apikey.

  final baseUrl = 'https://newsapi.org/v2';

  @override
  Future<Either<NewsFailure, NewsHeadlinesResponse>> getNewsHeadlines({
    NewsCategory? category,
  }) async {
    final _category = newsCategoryToString(category!);
    final getNewsHeadlinesUrl =
        '$baseUrl/top-headlines?country=us/&apiKey=$apikey&category=$_category';

    try {
      final response = await http.get(
        Uri.parse(getNewsHeadlinesUrl),
      );

      switch (response.statusCode) {
        case 200:
          final NewsHeadlinesResponse newsHeadlinesResponse =
              newsHeadlinesResponseFromJson(response.body);

          return right(newsHeadlinesResponse);

        case 403:
          return left(const NewsFailure.noPermission());

        case 404:
          return left(const NewsFailure.notFound());

        default:
          return left(const NewsFailure.unexpected());
      }
    } on SocketException catch (_) {
      return left(const NewsFailure.noInternetConnection());
    }
  }

  @override
  Future<Either<NewsFailure, SearchNewsResponse>> searchNews({
    String? query,
    int? page,
  }) async {
    final searchNewsUrl =
        '$baseUrl/everything?q=$query&apiKey=$apikey&page=$page';

    try {
      final response = await http.get(
        Uri.parse(searchNewsUrl),
      );

      switch (response.statusCode) {
        case 200:
          final SearchNewsResponse searchNewsResponse =
              searchNewsResponseFromJson(response.body);

          return right(searchNewsResponse);

        case 403:
          return left(const NewsFailure.noPermission());

        case 404:
          return left(const NewsFailure.notFound());

        default:
          return left(const NewsFailure.unexpected());
      }
    } on SocketException catch (_) {
      return left(const NewsFailure.noInternetConnection());
    }
  }
}
