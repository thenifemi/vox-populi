import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../Application/theme/theme_bloc.dart';
import '../../injection.dart';
import '../core/theme/theme.dart';
import '../routes/router.gr.dart';

class App extends StatelessWidget {
  final _appRouter = AppRouter();

  Future<AppTheme>? setTheme() async {
    final appThemeBox = await Hive.openBox<AppTheme>('appTheme');

    if (appThemeBox.isEmpty) {
      appThemeBox.put(0, AppTheme.light);
      return appThemeBox.get(0)!;
    }
    return appThemeBox.get(0)!;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<AppTheme>(
        future: setTheme(),
        builder: (context, snapshot) {
          final AppTheme? _appTheme =
              snapshot.hasData ? snapshot.data : AppTheme.light;

          return BlocProvider(
            create: (context) => getIt<ThemeBloc>()
              ..add(
                ThemeEvent.changeTheme(_appTheme!),
              ),
            child: BlocBuilder<ThemeBloc, ThemeState>(
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
        });
  }
}
