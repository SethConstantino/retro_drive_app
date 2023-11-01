import 'package:flutter/material.dart';
//import 'package:retro_drive_app/presentation/screens/login_screen.dart';
import 'package:retro_drive_app/presentation/screens/start_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: const Color.fromRGBO(13, 23, 36, 1),
        scaffoldBackgroundColor: const Color(0xFF0D1724),
      ),
      home: const StartScreen(),
      //home: const LoginScreen(),
    );
  }
}
