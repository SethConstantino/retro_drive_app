import 'package:flutter/material.dart';
import 'package:retro_drive_app/presentation/screens/home_screen.dart';

class SingupScreen extends StatelessWidget {
  const SingupScreen({super.key});
  final UnderlineInputBorder inputBorderStyle = const UnderlineInputBorder(
    borderSide: BorderSide(color: Color.fromRGBO(64, 72, 191, 0.934)),
  );

  final Color myColor = const Color.fromRGBO(64, 72, 191, 0.934);

  @override
  Widget build(BuildContext context) {
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
                  padding: EdgeInsets.only(top: 30, left: 30),
                  child: Text(
                    'Signup to RetroDrive',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
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
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                  decoration: InputDecoration(
                    enabledBorder: inputBorderStyle,
                    focusedBorder: inputBorderStyle,
                    //labelText: 'Password',
                    prefixIcon: Icon(
                      Icons.phone_android_outlined,
                      size: 35,
                      color: myColor,
                    ),
                    hintText: 'Phone',
                    hintStyle: const TextStyle(
                      color: Colors.white54,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
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
              const SizedBox(height: 30),
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
                    hintText: 'Confirm password',
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
                height: 56,
                width: 320,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Accept & Continue',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    const Text(
                      'By continuing, I confirm I have read the',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        /*Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );*/
                      },
                      child: const Text(
                        'Privacy Policy',
                        style: TextStyle(
                          color: Color.fromRGBO(64, 72, 191, 1),
                          fontSize: 12,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5, bottom: 30),
                child: Text(
                  'or',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromRGBO(64, 72, 191, 1),
                      Color.fromRGBO(8, 102, 255, 1),
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
                width: 320,
                child: TextButton.icon(
                  icon: const Icon(
                    Icons.facebook_outlined,
                    color: Colors.white,
                    size: 37,
                  ),
                  onPressed: () {},
                  label: const Text(
                    'Sign up with Facebook',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromRGBO(64, 72, 191, 1),
                      Color.fromRGBO(255, 255, 255, 1),
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
                width: 320,
                child: TextButton.icon(
                  icon: const Icon(
                    Icons.g_mobiledata_rounded,
                    color: Colors.white,
                    size: 42,
                  ),
                  onPressed: () {},
                  label: const Text(
                    'Sign up with Facebook',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
