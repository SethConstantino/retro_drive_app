import 'package:flutter/material.dart';
import 'package:retro_drive_app/presentation/screens/home_screen.dart';
import 'package:retro_drive_app/presentation/screens/signup_screen.dart';

import '../widgets/icon_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  final UnderlineInputBorder inputBorderStyle = const UnderlineInputBorder(
    borderSide: BorderSide(color: Color.fromRGBO(64, 72, 191, 0.934)),
  );

  final Color myColor = const Color.fromRGBO(64, 72, 191, 0.934);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              // ignore: sized_box_for_whitespace
              Container(
                width: double.infinity,
                child: const Padding(
                  padding: EdgeInsets.only(top: 60, left: 30),
                  child: Text(
                    'Login to RetroDrive',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                  //obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: inputBorderStyle,
                    focusedBorder: inputBorderStyle,
                    //labelText: 'Password',
                    prefixIcon: Icon(
                      Icons.person_outline_rounded,
                      size: 35,
                      color: myColor,
                    ),
                    hintText: 'Email',
                    hintStyle: const TextStyle(
                      color: Colors.white54,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  obscureText: true,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                  decoration: InputDecoration(
                    enabledBorder: inputBorderStyle,
                    focusedBorder: inputBorderStyle,
                    //labelText: 'Password',
                    prefixIcon: Icon(
                      Icons.password_outlined,
                      size: 35,
                      color: myColor,
                    ),
                    hintText: 'Password',
                    hintStyle: const TextStyle(
                      color: Colors.white54,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color.fromRGBO(81, 75, 195, 1),
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
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  'or',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              const MyIconButton(
                color: Color.fromRGBO(8, 102, 255, 1),
                icon: Icons.facebook_outlined,
                text: 'Login with Facebook',
              ),
              const SizedBox(height: 30),
              const MyIconButton(
                color: Color.fromRGBO(255, 255, 255, 1),
                icon: Icons.g_mobiledata_rounded,
                text: 'Login with Google',
                textColor: 1,
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    const Text(
                      'Don\'t have an account yet?',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SingupScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Signup',
                        style: TextStyle(color: Color.fromRGBO(64, 72, 191, 1)),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
