// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NewsEventTearOff {
  const _$NewsEventTearOff();

  _GetNewsHeadlines getNewsHeadlines(String category) {
    return _GetNewsHeadlines(
      category,
    );
  }

  _SearchNews searchNews(String query, int page) {
    return _SearchNews(
      query,
      page,
    );
  }
}

/// @nodoc
const $NewsEvent = _$NewsEventTearOff();

/// @nodoc
mixin _$NewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category) getNewsHeadlines,
    required TResult Function(String query, int page) searchNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category)? getNewsHeadlines,
    TResult Function(String query, int page)? searchNews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNewsHeadlines value) getNewsHeadlines,
    required TResult Function(_SearchNews value) searchNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNewsHeadlines value)? getNewsHeadlines,
    TResult Function(_SearchNews value)? searchNews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEventCopyWith<$Res> {
  factory $NewsEventCopyWith(NewsEvent value, $Res Function(NewsEvent) then) =
      _$NewsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsEventCopyWithImpl<$Res> implements $NewsEventCopyWith<$Res> {
  _$NewsEventCopyWithImpl(this._value, this._then);

  final NewsEvent _value;
  // ignore: unused_field
  final $Res Function(NewsEvent) _then;
}

/// @nodoc
abstract class _$GetNewsHeadlinesCopyWith<$Res> {
  factory _$GetNewsHeadlinesCopyWith(
          _GetNewsHeadlines value, $Res Function(_GetNewsHeadlines) then) =
      __$GetNewsHeadlinesCopyWithImpl<$Res>;
  $Res call({String category});
}

/// @nodoc
class __$GetNewsHeadlinesCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res>
    implements _$GetNewsHeadlinesCopyWith<$Res> {
  __$GetNewsHeadlinesCopyWithImpl(
      _GetNewsHeadlines _value, $Res Function(_GetNewsHeadlines) _then)
      : super(_value, (v) => _then(v as _GetNewsHeadlines));

  @override
  _GetNewsHeadlines get _value => super._value as _GetNewsHeadlines;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_GetNewsHeadlines(
      category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetNewsHeadlines implements _GetNewsHeadlines {
  const _$_GetNewsHeadlines(this.category);

  @override
  final String category;

  @override
  String toString() {
    return 'NewsEvent.getNewsHeadlines(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetNewsHeadlines &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(category);

  @JsonKey(ignore: true)
  @override
  _$GetNewsHeadlinesCopyWith<_GetNewsHeadlines> get copyWith =>
      __$GetNewsHeadlinesCopyWithImpl<_GetNewsHeadlines>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category) getNewsHeadlines,
    required TResult Function(String query, int page) searchNews,
  }) {
    return getNewsHeadlines(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category)? getNewsHeadlines,
    TResult Function(String query, int page)? searchNews,
    required TResult orElse(),
  }) {
    if (getNewsHeadlines != null) {
      return getNewsHeadlines(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNewsHeadlines value) getNewsHeadlines,
    required TResult Function(_SearchNews value) searchNews,
  }) {
    return getNewsHeadlines(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNewsHeadlines value)? getNewsHeadlines,
    TResult Function(_SearchNews value)? searchNews,
    required TResult orElse(),
  }) {
    if (getNewsHeadlines != null) {
      return getNewsHeadlines(this);
    }
    return orElse();
  }
}

abstract class _GetNewsHeadlines implements NewsEvent {
  const factory _GetNewsHeadlines(String category) = _$_GetNewsHeadlines;

  String get category => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetNewsHeadlinesCopyWith<_GetNewsHeadlines> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SearchNewsCopyWith<$Res> {
  factory _$SearchNewsCopyWith(
          _SearchNews value, $Res Function(_SearchNews) then) =
      __$SearchNewsCopyWithImpl<$Res>;
  $Res call({String query, int page});
}

/// @nodoc
class __$SearchNewsCopyWithImpl<$Res> extends _$NewsEventCopyWithImpl<$Res>
    implements _$SearchNewsCopyWith<$Res> {
  __$SearchNewsCopyWithImpl(
      _SearchNews _value, $Res Function(_SearchNews) _then)
      : super(_value, (v) => _then(v as _SearchNews));

  @override
  _SearchNews get _value => super._value as _SearchNews;

  @override
  $Res call({
    Object? query = freezed,
    Object? page = freezed,
  }) {
    return _then(_SearchNews(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SearchNews implements _SearchNews {
  const _$_SearchNews(this.query, this.page);

  @override
  final String query;
  @override
  final int page;

  @override
  String toString() {
    return 'NewsEvent.searchNews(query: $query, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchNews &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(query) ^
      const DeepCollectionEquality().hash(page);

  @JsonKey(ignore: true)
  @override
  _$SearchNewsCopyWith<_SearchNews> get copyWith =>
      __$SearchNewsCopyWithImpl<_SearchNews>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category) getNewsHeadlines,
    required TResult Function(String query, int page) searchNews,
  }) {
    return searchNews(query, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category)? getNewsHeadlines,
    TResult Function(String query, int page)? searchNews,
    required TResult orElse(),
  }) {
    if (searchNews != null) {
      return searchNews(query, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNewsHeadlines value) getNewsHeadlines,
    required TResult Function(_SearchNews value) searchNews,
  }) {
    return searchNews(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNewsHeadlines value)? getNewsHeadlines,
    TResult Function(_SearchNews value)? searchNews,
    required TResult orElse(),
  }) {
    if (searchNews != null) {
      return searchNews(this);
    }
    return orElse();
  }
}

abstract class _SearchNews implements NewsEvent {
  const factory _SearchNews(String query, int page) = _$_SearchNews;

  String get query => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SearchNewsCopyWith<_SearchNews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$NewsStateTearOff {
  const _$NewsStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Failure failure(NewsFailure failure) {
    return _Failure(
      failure,
    );
  }

  _SuccessForNews successForNews(NewsHeadlinesResponse newsHeadlinesResponse) {
    return _SuccessForNews(
      newsHeadlinesResponse,
    );
  }

  _SuccessForSearch successForSearch(SearchNewsResponse searchNewsResponse) {
    return _SuccessForSearch(
      searchNewsResponse,
    );
  }
}

/// @nodoc
const $NewsState = _$NewsStateTearOff();

/// @nodoc
mixin _$NewsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(NewsFailure failure) failure,
    required TResult Function(NewsHeadlinesResponse newsHeadlinesResponse)
        successForNews,
    required TResult Function(SearchNewsResponse searchNewsResponse)
        successForSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(NewsFailure failure)? failure,
    TResult Function(NewsHeadlinesResponse newsHeadlinesResponse)?
        successForNews,
    TResult Function(SearchNewsResponse searchNewsResponse)? successForSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_SuccessForNews value) successForNews,
    required TResult Function(_SuccessForSearch value) successForSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_SuccessForNews value)? successForNews,
    TResult Function(_SuccessForSearch value)? successForSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res> implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  final NewsState _value;
  // ignore: unused_field
  final $Res Function(NewsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'NewsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(NewsFailure failure) failure,
    required TResult Function(NewsHeadlinesResponse newsHeadlinesResponse)
        successForNews,
    required TResult Function(SearchNewsResponse searchNewsResponse)
        successForSearch,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(NewsFailure failure)? failure,
    TResult Function(NewsHeadlinesResponse newsHeadlinesResponse)?
        successForNews,
    TResult Function(SearchNewsResponse searchNewsResponse)? successForSearch,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_SuccessForNews value) successForNews,
    required TResult Function(_SuccessForSearch value) successForSearch,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_SuccessForNews value)? successForNews,
    TResult Function(_SuccessForSearch value)? successForSearch,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NewsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'NewsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(NewsFailure failure) failure,
    required TResult Function(NewsHeadlinesResponse newsHeadlinesResponse)
        successForNews,
    required TResult Function(SearchNewsResponse searchNewsResponse)
        successForSearch,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(NewsFailure failure)? failure,
    TResult Function(NewsHeadlinesResponse newsHeadlinesResponse)?
        successForNews,
    TResult Function(SearchNewsResponse searchNewsResponse)? successForSearch,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_SuccessForNews value) successForNews,
    required TResult Function(_SuccessForSearch value) successForSearch,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_SuccessForNews value)? successForNews,
    TResult Function(_SuccessForSearch value)? successForSearch,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements NewsState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({NewsFailure failure});

  $NewsFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_Failure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as NewsFailure,
    ));
  }

  @override
  $NewsFailureCopyWith<$Res> get failure {
    return $NewsFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure(this.failure);

  @override
  final NewsFailure failure;

  @override
  String toString() {
    return 'NewsState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(NewsFailure failure) failure,
    required TResult Function(NewsHeadlinesResponse newsHeadlinesResponse)
        successForNews,
    required TResult Function(SearchNewsResponse searchNewsResponse)
        successForSearch,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(NewsFailure failure)? failure,
    TResult Function(NewsHeadlinesResponse newsHeadlinesResponse)?
        successForNews,
    TResult Function(SearchNewsResponse searchNewsResponse)? successForSearch,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_SuccessForNews value) successForNews,
    required TResult Function(_SuccessForSearch value) successForSearch,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_SuccessForNews value)? successForNews,
    TResult Function(_SuccessForSearch value)? successForSearch,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements NewsState {
  const factory _Failure(NewsFailure failure) = _$_Failure;

  NewsFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SuccessForNewsCopyWith<$Res> {
  factory _$SuccessForNewsCopyWith(
          _SuccessForNews value, $Res Function(_SuccessForNews) then) =
      __$SuccessForNewsCopyWithImpl<$Res>;
  $Res call({NewsHeadlinesResponse newsHeadlinesResponse});
}

/// @nodoc
class __$SuccessForNewsCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements _$SuccessForNewsCopyWith<$Res> {
  __$SuccessForNewsCopyWithImpl(
      _SuccessForNews _value, $Res Function(_SuccessForNews) _then)
      : super(_value, (v) => _then(v as _SuccessForNews));

  @override
  _SuccessForNews get _value => super._value as _SuccessForNews;

  @override
  $Res call({
    Object? newsHeadlinesResponse = freezed,
  }) {
    return _then(_SuccessForNews(
      newsHeadlinesResponse == freezed
          ? _value.newsHeadlinesResponse
          : newsHeadlinesResponse // ignore: cast_nullable_to_non_nullable
              as NewsHeadlinesResponse,
    ));
  }
}

/// @nodoc

class _$_SuccessForNews implements _SuccessForNews {
  const _$_SuccessForNews(this.newsHeadlinesResponse);

  @override
  final NewsHeadlinesResponse newsHeadlinesResponse;

  @override
  String toString() {
    return 'NewsState.successForNews(newsHeadlinesResponse: $newsHeadlinesResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SuccessForNews &&
            (identical(other.newsHeadlinesResponse, newsHeadlinesResponse) ||
                const DeepCollectionEquality().equals(
                    other.newsHeadlinesResponse, newsHeadlinesResponse)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newsHeadlinesResponse);

  @JsonKey(ignore: true)
  @override
  _$SuccessForNewsCopyWith<_SuccessForNews> get copyWith =>
      __$SuccessForNewsCopyWithImpl<_SuccessForNews>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(NewsFailure failure) failure,
    required TResult Function(NewsHeadlinesResponse newsHeadlinesResponse)
        successForNews,
    required TResult Function(SearchNewsResponse searchNewsResponse)
        successForSearch,
  }) {
    return successForNews(newsHeadlinesResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(NewsFailure failure)? failure,
    TResult Function(NewsHeadlinesResponse newsHeadlinesResponse)?
        successForNews,
    TResult Function(SearchNewsResponse searchNewsResponse)? successForSearch,
    required TResult orElse(),
  }) {
    if (successForNews != null) {
      return successForNews(newsHeadlinesResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_SuccessForNews value) successForNews,
    required TResult Function(_SuccessForSearch value) successForSearch,
  }) {
    return successForNews(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_SuccessForNews value)? successForNews,
    TResult Function(_SuccessForSearch value)? successForSearch,
    required TResult orElse(),
  }) {
    if (successForNews != null) {
      return successForNews(this);
    }
    return orElse();
  }
}

abstract class _SuccessForNews implements NewsState {
  const factory _SuccessForNews(NewsHeadlinesResponse newsHeadlinesResponse) =
      _$_SuccessForNews;

  NewsHeadlinesResponse get newsHeadlinesResponse =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SuccessForNewsCopyWith<_SuccessForNews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SuccessForSearchCopyWith<$Res> {
  factory _$SuccessForSearchCopyWith(
          _SuccessForSearch value, $Res Function(_SuccessForSearch) then) =
      __$SuccessForSearchCopyWithImpl<$Res>;
  $Res call({SearchNewsResponse searchNewsResponse});
}

/// @nodoc
class __$SuccessForSearchCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res>
    implements _$SuccessForSearchCopyWith<$Res> {
  __$SuccessForSearchCopyWithImpl(
      _SuccessForSearch _value, $Res Function(_SuccessForSearch) _then)
      : super(_value, (v) => _then(v as _SuccessForSearch));

  @override
  _SuccessForSearch get _value => super._value as _SuccessForSearch;

  @override
  $Res call({
    Object? searchNewsResponse = freezed,
  }) {
    return _then(_SuccessForSearch(
      searchNewsResponse == freezed
          ? _value.searchNewsResponse
          : searchNewsResponse // ignore: cast_nullable_to_non_nullable
              as SearchNewsResponse,
    ));
  }
}

/// @nodoc

class _$_SuccessForSearch implements _SuccessForSearch {
  const _$_SuccessForSearch(this.searchNewsResponse);

  @override
  final SearchNewsResponse searchNewsResponse;

  @override
  String toString() {
    return 'NewsState.successForSearch(searchNewsResponse: $searchNewsResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SuccessForSearch &&
            (identical(other.searchNewsResponse, searchNewsResponse) ||
                const DeepCollectionEquality()
                    .equals(other.searchNewsResponse, searchNewsResponse)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(searchNewsResponse);

  @JsonKey(ignore: true)
  @override
  _$SuccessForSearchCopyWith<_SuccessForSearch> get copyWith =>
      __$SuccessForSearchCopyWithImpl<_SuccessForSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(NewsFailure failure) failure,
    required TResult Function(NewsHeadlinesResponse newsHeadlinesResponse)
        successForNews,
    required TResult Function(SearchNewsResponse searchNewsResponse)
        successForSearch,
  }) {
    return successForSearch(searchNewsResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(NewsFailure failure)? failure,
    TResult Function(NewsHeadlinesResponse newsHeadlinesResponse)?
        successForNews,
    TResult Function(SearchNewsResponse searchNewsResponse)? successForSearch,
    required TResult orElse(),
  }) {
    if (successForSearch != null) {
      return successForSearch(searchNewsResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_SuccessForNews value) successForNews,
    required TResult Function(_SuccessForSearch value) successForSearch,
  }) {
    return successForSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_SuccessForNews value)? successForNews,
    TResult Function(_SuccessForSearch value)? successForSearch,
    required TResult orElse(),
  }) {
    if (successForSearch != null) {
      return successForSearch(this);
    }
    return orElse();
  }
}

abstract class _SuccessForSearch implements NewsState {
  const factory _SuccessForSearch(SearchNewsResponse searchNewsResponse) =
      _$_SuccessForSearch;

  SearchNewsResponse get searchNewsResponse =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SuccessForSearchCopyWith<_SuccessForSearch> get copyWith =>
      throw _privateConstructorUsedError;
}
