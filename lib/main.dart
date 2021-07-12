import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'Domain/user/user.dart';
import 'injection.dart';
import 'presentation/app/app.dart';
import 'presentation/core/theme/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();

  await Hive.initFlutter();

  //? UserAdapter
  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(AppThemeAdapter());

  final appThemeBox = await Hive.openBox<AppTheme>('appTheme');

  if (appThemeBox.isEmpty) {
    appThemeBox.put(0, AppTheme.light);
    runApp(App(appTheme: appThemeBox.get(0)));
  } else {
    runApp(App(appTheme: appThemeBox.get(0)));
  }
}
