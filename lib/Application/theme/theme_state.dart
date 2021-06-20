part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.themeChanged(ThemeData? themeData) = _ThemeChanged;
}
