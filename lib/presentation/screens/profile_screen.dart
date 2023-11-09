import 'package:flutter/material.dart';
import 'package:retro_drive_app/presentation/screens/home_screen.dart';
import 'package:retro_drive_app/presentation/widgets/top_button_name.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            BackButtonScreen(text: 'Profile', nextPageName: const HomeScreen()),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(64, 72, 191, 1),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(64, 72, 191, 1),
                                    blurRadius: 15,
                                  )
                                ],
                              ),
                              height: 95,
                              width: 95,
                            ),
                            const ClipOval(
                              child: Image(
                                width: 90,
                                image: AssetImage('assets/profile.jpg'),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          'SCJ99',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //división de header e info
            InfoText(text_1: "Nickname", text_2: "SCJ99"),
            InfoText(text_1: "Name", text_2: "Seth Constantino"),
            InfoText(text_1: "E-mail", text_2: "arturo.seth.99@gmail.com"),
            InfoText(text_1: "Phone", text_2: "427 275 7479"),
            InfoText(text_1: "Password", text_2: "********"),
            const SizedBox(height: 60),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color.fromRGBO(81, 75, 195, 1),
              ),
              height: 56,
              width: 340,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileScreen(),
                    ),
                  );
                },
                child: const Text(
                  'Edit profile',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoText extends StatelessWidget {
  final String text_1, text_2;

  InfoText({required this.text_1, required this.text_2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color.fromRGBO(64, 72, 191, 0.5),
            ),
          ),
        ),
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              child: Text(
                text_1,
                style: const TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 0.5),
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(height: 5),
            SizedBox(
              width: double.infinity,
              child: Text(
                text_2,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
