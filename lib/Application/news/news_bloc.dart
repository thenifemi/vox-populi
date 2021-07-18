import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../Domain/news/news_failure.dart';
import '../../Domain/news/news_headlines_response.dart';
import '../../Domain/news/news_interface.dart';
import '../../Domain/news/search_news_response.dart';

part 'news_bloc.freezed.dart';
part 'news_event.dart';
part 'news_state.dart';

@injectable
class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc(this.newsInterface) : super(const _Initial());

  final NewsInterface newsInterface;

  @override
  Stream<NewsState> mapEventToState(
    NewsEvent event,
  ) async* {
    yield* event.map(
      getNewsHeadlines: (e) async* {
        yield const NewsState.loading();

        final failureOrNews = await newsInterface.getNewsHeadlines(
          category: e.category,
        );

        yield failureOrNews.fold(
          (failure) => NewsState.failure(failure),
          (newsResponse) => NewsState.successForNews(newsResponse),
        );
      },
      searchNews: (e) async* {
        yield const NewsState.loading();

        final failureOrNews = await newsInterface.searchNews(
          query: e.query,
          page: e.page,
        );

        yield failureOrNews.fold(
          (failure) => NewsState.failure(failure),
          (searchResponse) => NewsState.successForSearch(searchResponse),
        );
      },
    );
  }
}
