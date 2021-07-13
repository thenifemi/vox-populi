import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_failure.freezed.dart';

@freezed
abstract class NewsFailure with _$NewsFailure {
  const factory NewsFailure.noInternetConnection() = _NoInternetConnection;
  const factory NewsFailure.unexpected() = _Unexpected;
  const factory NewsFailure.noPermission() = _NoPermission;
}
