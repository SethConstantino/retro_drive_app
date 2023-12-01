import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:retro_drive_app/presentation/screens/gave_up_screen.dart';
import 'package:retro_drive_app/presentation/screens/home_screen.dart';
import 'package:retro_drive_app/presentation/screens/login_screen.dart';
import 'package:retro_drive_app/presentation/screens/profile_screen.dart';
import 'package:retro_drive_app/presentation/screens/race_won_screen.dart';
import 'package:retro_drive_app/presentation/screens/settings_screen.dart';
import 'package:retro_drive_app/presentation/screens/signup_screen.dart';
import 'package:retro_drive_app/presentation/screens/start_screen.dart';
import 'package:retro_drive_app/presentation/screens/time_setting.dart';

import 'services/collection_service.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: ((context) => CollectionService()),
        ),
      ],
      child: MyApp(),
    );
  }
}
//void main() => runApp(const MyApp());

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
      initialRoute: 'startScreen',
      routes: {
        'startScreen': (context) => const StartScreen(),
        'loginScreen': (context) => const LoginScreen(),
        'singupScreen': (context) => const SingupScreen(),
        'homeScreen': (context) => const HomeScreen(),
        'profileScreen': (context) => const ProfileScreen(),
        'settingsScreen': (context) => const SettingsScreen(),
        'timeSettingScreen': (context) => const TimeSettingScreen(),
        'gaveUpScreen': (context) => const GaveUpScreen(),
        'raceWonScreen': (context) => const RaceWonScreen(),
      },
    );
  }
}
