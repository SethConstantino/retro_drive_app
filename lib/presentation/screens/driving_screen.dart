import 'package:flutter/material.dart';
import 'dart:async';

class DrivingScreen extends StatelessWidget {
  final TextEditingController minutesInput;
  final TextEditingController hoursInput;

  const DrivingScreen({
    super.key,
    required this.hoursInput,
    required this.minutesInput,
  });

  final UnderlineInputBorder inputBorderStyle = const UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.transparent),
  );

  final Color myColor = const Color.fromRGBO(64, 72, 191, 0.934);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.19,
                child: const Column(
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
              _NumberCell(
                hoursInput: hoursInput,
                minutesInput: minutesInput,
                width: width,
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
              SizedBox(height: height * 0.1),
              Container(
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
                height: height > 56 ? 56 : height * 0.06,
                width: width * 0.85,
                child: TextButton.icon(
                  icon: const Icon(
                    Icons.sentiment_dissatisfied_outlined,
                    color: Colors.white,
                    size: 37,
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'gaveUpScreen');
                  },
                  label: const Text(
                    'I give up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
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

class _NumberCell extends StatelessWidget {
  final double width;
  final TextEditingController minutesInput;
  final TextEditingController hoursInput;

  const _NumberCell({
    required this.hoursInput,
    required this.minutesInput,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * 0.8,
      height: 50,
      child: Container(
        alignment: Alignment.center,
        width: width * 0.75,
        height: double.infinity,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(88, 81, 123, 1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextClocTimer(
          hoursInput: hoursInput,
          minutesInput: minutesInput,
        ),
      ),
    );
  }
}

class TextClocTimer extends StatefulWidget {
  final TextEditingController minutesInput;
  final TextEditingController hoursInput;

  const TextClocTimer({
    required this.minutesInput,
    required this.hoursInput,
  });
  @override
  State<TextClocTimer> createState() => _TextClocTimerState();
}

class _TextClocTimerState extends State<TextClocTimer> {
  int minutes = 0, hours = 0, seconds = 0, secs = 60;
  String printText = '';
  bool stop = false;

  void stopTimer() {
    stop = true;
  }

  @override
  void initState() {
    super.initState();
    //print('text hrs ${widget.hoursInput.text}');
    minutes = widget.minutesInput.text.isEmpty
        ? 0
        : int.parse(widget.minutesInput.text);
    hours =
        widget.hoursInput.text.isEmpty ? 0 : int.parse(widget.hoursInput.text);

    if (hours != 0) seconds += hours * 3600;
    seconds += minutes * 60;

    setState(() {
      printText = '';
    });

    Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (seconds == 0) {
          timer.cancel();
          setState(() {
            printText = '$hours : $minutes : $secs';
          });
          Navigator.pushReplacementNamed(context, 'raceWonScreen');
        } else {
          seconds--;
          secs--;
          if (secs == 0) {
            secs = (seconds == 0) ? 0 : 60;
            minutes--;
            if (hours != 0) {
              hours--;
              minutes = 60;
            }
          }
          setState(() {
            printText = '$hours : ${minutes == 0 ? 0 : minutes - 1} : $secs';
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      printText,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 30,
      ),
    );
  }
}
