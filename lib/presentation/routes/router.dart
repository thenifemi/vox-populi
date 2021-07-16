import 'package:auto_route/annotations.dart';

import '../article/article_screen.dart';
import '../edit_profile/edit_profile_screen.dart';
import '../get_started/get_started_screen.dart';
import '../home/home_screen.dart';
import '../search/search_screen.dart';
import '../settings/settings_screen.dart';
import '../settings/widgets/signout_screen.dart';
import '../signin/signin_screen.dart';
import '../splash/splash_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: SplashScreen, initial: true),
    MaterialRoute(page: GetStartedScreen),
    MaterialRoute(page: SigninScreen),
    MaterialRoute(page: HomeScreen),
    MaterialRoute(page: SettingsScreen),
    MaterialRoute(page: SignoutScreen),
    MaterialRoute(page: EditProfileScreen),
    MaterialRoute(page: SearchScreen, fullscreenDialog: true),
    MaterialRoute(page: ArticleScreen, fullscreenDialog: true),
  ],
)
class $AppRouter {}
