import 'package:flutter/material.dart';
import 'package:retro_drive_app/presentation/screens/home_screen.dart';
import 'package:retro_drive_app/presentation/widgets/top_button_name.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            BackButtonScreen(
              text: 'Settings',
              nextPageName: const HomeScreen(),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  //general setting
                  const SizedBox(
                    width: double.infinity,
                    child: Text(
                      'General',
                      style: TextStyle(
                        color: Color.fromRGBO(64, 72, 191, 1),
                        fontSize: 15,
                      ),
                    ),
                  ),
                  //boton de settings
                  const SizedBox(height: 10),
                  SettingsButton(
                    icon: Icons.question_mark_outlined,
                    text: 'FAQ',
                  ),
                  //legal setting
                  const SizedBox(height: 25),
                  const SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Legal',
                      style: TextStyle(
                        color: Color.fromRGBO(64, 72, 191, 1),
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SettingsButton(
                    icon: Icons.shield_outlined,
                    text: 'Privacy Policy',
                  ),
                  const SizedBox(height: 10),
                  SettingsButton(
                    icon: Icons.check,
                    text: 'Terms & Conditions',
                  ),
                  const SizedBox(height: 10),
                  SettingsButton(
                    icon: Icons.people_alt_rounded,
                    text: 'Developer Team',
                  ),
                  const SizedBox(height: 25),
                  const SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Copyright, LAMAO. All rights reserved',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 0.55),
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsButton extends StatelessWidget {
  final IconData icon;
  final String text;

  SettingsButton({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color.fromRGBO(64, 72, 191, 0.5),
          ),
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        child: TextButton.icon(
          style: const ButtonStyle(alignment: Alignment.centerLeft),
          onPressed: () {},
          icon: Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          label: Text(
            text,
            style: const TextStyle(
              color: Color.fromRGBO(255, 255, 255, 0.55),
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
