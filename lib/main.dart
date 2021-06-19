import 'package:flutter/material.dart';

import 'presentation/splash/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Vox Populi',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
