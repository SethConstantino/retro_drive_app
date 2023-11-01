import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:retro_drive_app/presentation/screens/login_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 600,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 15),
                          color: Color.fromRGBO(20, 103, 204, 0.16),
                          blurRadius: 30,
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(81, 75, 195, 100),
                          Color.fromRGBO(64, 72, 197, 60)
                        ],
                      ),
                    ),
                  ),
                  const Center(
                    child: Column(
                      children: [
                        SizedBox(height: 100),
                        Padding(
                          padding: EdgeInsets.all(30),
                          child: Image(
                            image: AssetImage('assets/retro_drive.jpeg'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color.fromRGBO(81, 75, 195, 1),
                ),
                height: 56,
                width: 340,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Get Started',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
