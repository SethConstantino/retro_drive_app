import 'package:flutter/material.dart';
import 'dart:async';

//import 'package:retro_drive_app/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: PrintEnPantalla()),
      ),
    );
  }
}

class PrintEnPantalla extends StatefulWidget {
  @override
  State<PrintEnPantalla> createState() => _PrintEnPantallaState();
}

class _PrintEnPantallaState extends State<PrintEnPantalla> {
  var hrs, min, seconds, secs = 0;
  String printText = '';

  @override
  void initState() {
    super.initState();
    min = 2;
    hrs = 0;

    if (hrs != 0) min += hrs * 60;
    seconds = min * 60;
    printText = 'Quedan $seconds segundos\n';

    Timer.periodic(Duration(seconds: 1), (timer) {
      if (seconds == 0) {
        timer.cancel();
        setState(() {
          printText = 'Cuenta regresiva finalizada';
        });
      } else {
        seconds--;
        secs++;
        if (secs == 60) {
          secs = 0;
          min--;
          setState(() {
            printText = 'minutos restantes $min\n';
          });
        }
        setState(() {
          printText = 'Quedan $seconds segundos\n';
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      printText,
      style: TextStyle(color: Colors.white),
    );
  }
}
