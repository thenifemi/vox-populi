import 'package:auto_route/annotations.dart';

import '../splash/splash_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: SplashScreen, initial: true),
  ],
)
class $AppRouter {}
