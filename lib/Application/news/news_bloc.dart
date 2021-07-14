import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vox_populi/Domain/news/news_headlines_response.dart';
import 'package:vox_populi/Domain/news/search_news_response.dart';

part 'news_event.dart';
part 'news_state.dart';
part 'news_bloc.freezed.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc() : super(const _Initial());

  @override
  Stream<NewsState> mapEventToState(
    NewsEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
