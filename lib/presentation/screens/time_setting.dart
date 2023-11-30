import 'package:flutter/material.dart';
import 'package:retro_drive_app/presentation/screens/driving_screen.dart';
import 'package:retro_drive_app/presentation/screens/home_screen.dart';
import 'package:retro_drive_app/presentation/widgets/top_button_name.dart';

class TimeSettingScreen extends StatelessWidget {
  const TimeSettingScreen({super.key});

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
              BackButtonScreen(text: '', nextPageName: const HomeScreen()),
              const SizedBox(
                height: 250,
                child: Column(
                  children: [
                    SizedBox(height: 55),
                    Text(
                      textAlign: TextAlign.center,
                      'Set the time\nyou\'re gonna be driving\n...',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
              TimeSettingFormWidget(
                inputBorderStyle: inputBorderStyle,
                myColor: myColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TimeSettingFormWidget extends StatelessWidget {
  TimeSettingFormWidget({
    super.key,
    required this.inputBorderStyle,
    required this.myColor,
  });

  final hoursInput = TextEditingController();
  final minutesInput = TextEditingController();

  final UnderlineInputBorder inputBorderStyle;
  final Color myColor;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Container(
            height: 100,
            width: double.infinity,
            decoration: const BoxDecoration(
              border: Border(
                //bottom: BorderSide(color: Color.fromRGBO(64, 72, 191, 1)),
                top: BorderSide(color: Color.fromRGBO(64, 72, 191, 1)),
              ),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  //controlador para campo de horas
                  controller: hoursInput,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                  decoration: InputDecoration(
                    enabledBorder: inputBorderStyle,
                    focusedBorder: inputBorderStyle,
                    prefixIcon: Icon(
                      Icons.watch_later_outlined,
                      size: 35,
                      color: myColor,
                    ),
                    hintText: 'hours...',
                    hintStyle: const TextStyle(
                      color: Colors.white54,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Container(
            height: 100,
            width: double.infinity,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Color.fromRGBO(64, 72, 191, 1)),
                top: BorderSide(color: Color.fromRGBO(64, 72, 191, 1)),
              ),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  //controlador para campo de minutos
                  controller: minutesInput,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                  decoration: InputDecoration(
                    enabledBorder: inputBorderStyle,
                    prefixIcon: Icon(
                      Icons.watch_later_outlined,
                      size: 35,
                      color: myColor,
                    ),
                    hintText: 'minutes...',
                    hintStyle: const TextStyle(
                      color: Colors.white54,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 150),
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromRGBO(64, 72, 191, 1),
                Color.fromRGBO(74, 199, 191, 1),
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
          height: height > 56 ? 56 : height * 0.06,
          width: width * 0.85,
          child: TextButton(
            child: const Text(
              'Let\'s go!',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => DrivingScreen(
                    hoursInput: hoursInput,
                    minutesInput: minutesInput,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
