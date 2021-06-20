import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Application/theme/theme_bloc.dart';
import '../../injection.dart';
import '../routes/router.gr.dart';

class App extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ThemeBloc>(),
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
  }
}
