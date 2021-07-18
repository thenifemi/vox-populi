part of 'news_bloc.dart';

@freezed
class NewsEvent with _$NewsEvent {
  const factory NewsEvent.getNewsHeadlines(
    String category,
  ) = _GetNewsHeadlines;
  const factory NewsEvent.searchNews(
    String query,
    int page,
  ) = _SearchNews;
}
