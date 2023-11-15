import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  final int? textColor;
  final dynamic nextPage;

  const MyIconButton({
    required this.icon,
    required this.color,
    required this.text,
    this.textColor,
    this.nextPage,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            const Color.fromRGBO(64, 72, 191, 1),
            color,
          ],
        ),
        boxShadow: const [
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
        icon: Icon(
          icon,
          color: Colors.white,
          size: 37,
        ),
        onPressed: () {
          if (nextPage != null) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => nextPage,
              ),
            );
          }
        },
        label: Text(
          text,
          style: TextStyle(
            color: textColor == null ? Colors.white : Colors.black,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
