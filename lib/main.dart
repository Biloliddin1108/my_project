import 'package:flutter/material.dart';
import 'package:my_project/presentation/ui/screens/splash/splash_screen.dart';

void main() {
  runApp(
    MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
