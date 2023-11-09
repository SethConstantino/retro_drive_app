import 'package:flutter/material.dart';
import 'package:retro_drive_app/presentation/screens/gave_up_screen.dart';
import 'package:retro_drive_app/presentation/screens/race_won_screen.dart';

class DrivingScreen extends StatelessWidget {
  const DrivingScreen({super.key});

  final UnderlineInputBorder inputBorderStyle = const UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.transparent),
  );

  final Color myColor = const Color.fromRGBO(64, 72, 191, 0.934);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 150,
                child: Column(
                  children: [
                    SizedBox(height: 55),
                    Text(
                      textAlign: TextAlign.center,
                      'Time remaining\n...',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NumberCell(num: '0'),
                    const SizedBox(width: 10),
                    NumberCell(num: '0'),
                    const SizedBox(width: 10),
                    const Text(
                      ':',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 10),
                    NumberCell(num: '0'),
                    const SizedBox(width: 10),
                    NumberCell(num: '0'),
                    const SizedBox(width: 10),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  height: 350,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(20, 103, 204, 0.16),
                        blurRadius: 30,
                      ),
                    ],
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Image(
                        image: AssetImage('assets/driving_2.gif'),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 90),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color.fromRGBO(64, 72, 191, 1),
                        Color.fromRGBO(195, 75, 75, 7),
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 15),
                        color: Color.fromRGBO(20, 103, 204, 0.16),
                        blurRadius: 30,
                      ),
                    ],
                  ),
                  height: 56,
                  width: double.infinity,
                  child: TextButton.icon(
                    label: const Text(
                      'I give up',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    icon: const Icon(
                      Icons.sentiment_dissatisfied_outlined,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const GaveUpScreen(),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 5),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RaceWonScreen(),
                    ),
                  );
                },
                child: const Text(
                  'Ver cuando ganas',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NumberCell extends StatelessWidget {
  final String num;

  NumberCell({required this.num});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 40,
      height: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(88, 81, 123, 1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        num,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
    );
  }
}
