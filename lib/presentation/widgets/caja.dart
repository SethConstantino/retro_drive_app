import 'package:flutter/material.dart';

class Caja extends StatelessWidget {
  final double h;

  Caja({required this.h});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: h,
      width: double.infinity,
      child: Container(
        color: Colors.green,
      ),
    );
  }
}
