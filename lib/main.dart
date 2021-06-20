import 'package:flutter/material.dart';

import 'injection.dart';
import 'presentation/app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();

  runApp(App());
}
