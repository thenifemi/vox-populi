part of 'news_bloc.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState.initial() = _Initial;
  const factory NewsState.loading() = _Loading;
  const factory NewsState.failure(NewsFailure failure) = _Failure;
  const factory NewsState.successForNews(
    NewsHeadlinesResponse newsHeadlinesResponse,
  ) = _SuccessForNews;
  const factory NewsState.successForSearch(
    SearchNewsResponse searchNewsResponse,
  ) = _SuccessForSearch;
}
