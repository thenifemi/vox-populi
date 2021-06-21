import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../Application/theme/theme_bloc.dart';
import '../../injection.dart';
import '../core/theme/theme.dart';
import '../routes/router.gr.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final _appRouter = AppRouter();
  AppTheme? _appTheme = AppTheme.light;

  Future setTheme() async {
    final appThemeBox = await Hive.openBox<AppTheme>('appTheme');

    if (appThemeBox.isEmpty) {
      appThemeBox.put(0, AppTheme.light);
      return _appTheme = appThemeBox.get(0);
    } else {
      return _appTheme = appThemeBox.get(0);
    }
  }

  @override
  void initState() {
    setTheme();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ThemeBloc>()
        ..add(
          ThemeEvent.changeTheme(_appTheme!),
        ),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        buildWhen: (p, c) => p != c,
        builder: (context, state) {
          return MaterialApp.router(
            title: 'Vox Populi',
            theme: state.themeData,
            debugShowCheckedModeBanner: false,
            routeInformationParser: _appRouter.defaultRouteParser(),
            routerDelegate: _appRouter.delegate(),
          );
        },
      ),
    );
  }
}
