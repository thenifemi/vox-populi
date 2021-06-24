import 'package:auto_route/annotations.dart';

import '../get_started/get_started_screen.dart';
import '../home/home_screen.dart';
import '../settings/settings_screen.dart';
import '../signin/signin_screen.dart';
import '../splash/splash_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: SplashScreen, initial: true),
    MaterialRoute(page: GetStartedScreen),
    MaterialRoute(page: SigninScreen),
    MaterialRoute(page: HomeScreen),
    MaterialRoute(page: SettingsScreen),
  ],
)
class $AppRouter {}
