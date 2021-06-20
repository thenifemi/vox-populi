import 'package:auto_route/annotations.dart';

import '../get_started/get_started_screen.dart';
import '../splash/splash_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: SplashScreen, initial: true),
    MaterialRoute(page: GetStartedScreen),
  ],
)
class $AppRouter {}