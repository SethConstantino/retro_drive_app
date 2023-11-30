import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:retro_drive_app/providers/login_form_provider.dart';

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
              ChangeNotifierProvider(
                create: (context) => LoginFormProvider(),
                child: _LoginForm(
                  inputBorderStyle: inputBorderStyle,
                  myColor: myColor,
                  height: height,
                  width: width,
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
                        Navigator.pushReplacementNamed(context, 'singupScreen');
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

class _LoginForm extends StatelessWidget {
  const _LoginForm({
    required this.inputBorderStyle,
    required this.myColor,
    required this.height,
    required this.width,
  });

  final UnderlineInputBorder inputBorderStyle;
  final Color myColor;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    final loginForm = Provider.of<LoginFormProvider>(context);
    return Form(
      key: loginForm.formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(color: Colors.white, fontSize: 18),
              onChanged: (value) => loginForm.email = value,
              validator: (value) {
                String pattern =
                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                RegExp regExp = RegExp(pattern);
                return regExp.hasMatch(value ?? '')
                    ? null
                    : 'This email isn\'t valid';
              },
              decoration: InputDecoration(
                enabledBorder: inputBorderStyle,
                focusedBorder: inputBorderStyle,
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
            child: TextFormField(
              autocorrect: false,
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(color: Colors.white, fontSize: 18),
              decoration: InputDecoration(
                enabledBorder: inputBorderStyle,
                focusedBorder: inputBorderStyle,
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
              onChanged: (value) => loginForm.password = value,
              validator: (value) {
                if (value != null && value.length >= 6) return null;
                return 'The password must have al least 6 characters';
              },
            ),
          ),
          const SizedBox(height: 60),
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
              onPressed: loginForm.isLoading
                  ? null
                  : () async {
                      FocusScope.of(context).unfocus();
                      if (!loginForm.isValidForm()) return;
                      loginForm.isLoading = true;
                      await Future.delayed(const Duration(seconds: 2));
                      loginForm.isLoading = false;
                      // ignore: use_build_context_synchronously
                      Navigator.pushReplacementNamed(context, 'homeScreen');
                    },
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
