import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'Domain/user/user.dart';
import 'injection.dart';
import 'presentation/app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();

  //? UserAdapter
  Hive.registerAdapter(UserAdapter());

  runApp(App());
}
