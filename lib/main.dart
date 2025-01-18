import 'package:flutter/material.dart';
import 'package:how_much_app/core/services/theme_services.dart';
import 'package:how_much_app/views/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'How Much App',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      // darkTheme: darkTheme,
      home: const SplashScreen(),
    );
  }
}
