part of 'news_bloc.dart';

@freezed
class NewsEvent with _$NewsEvent {
  const factory NewsEvent.getNewsHeadlines(
    NewsCategory category,
  ) = _GetNewsHeadlines;
  const factory NewsEvent.searchNews(
    String quesry,
  ) = _SearchNews;
}
