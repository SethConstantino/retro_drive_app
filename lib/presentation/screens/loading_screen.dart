import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  //const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(color: Color.fromRGBO(64, 72, 191, 1)),
      ),
    );
  }
}
