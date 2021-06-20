import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../presentation/core/theme/theme.dart';

part 'theme_bloc.freezed.dart';
part 'theme_event.dart';
part 'theme_state.dart';

@injectable
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(_ThemeChanged(appThemeData[AppTheme.dark]));

  AppTheme? appTheme;

  @override
  Stream<ThemeState> mapEventToState(
    ThemeEvent event,
  ) async* {
    yield* event.map(
      changeTheme: (e) async* {
        appTheme = e.appTheme;
        yield ThemeState.themeChanged(appThemeData[e.appTheme]);
      },
    );
  }
}
