import 'package:flutter/material.dart';

import '../splash/splash_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Vox Populi',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
