import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Application/theme/theme_bloc.dart';
import '../../injection.dart';
import '../core/theme/theme.dart';
import '../routes/router.gr.dart';

class App extends StatelessWidget {
  App({Key? key, required this.appTheme}) : super(key: key);

  final _appRouter = AppRouter();
  final AppTheme? appTheme;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return BlocProvider(
      create: (context) => getIt<ThemeBloc>()
        ..add(
          ThemeEvent.changeTheme(appTheme!),
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
