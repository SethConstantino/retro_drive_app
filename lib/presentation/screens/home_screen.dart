import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(81, 75, 195, 1),
                    ),
                    height: 40,
                    width: 40,
                    child: Center(
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          //Icons.arrow_back_ios_new_rounded,
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 90),
                  child: Image(
                    image: AssetImage('assets/retro_drive.jpeg'),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom:
                        BorderSide(color: Color.fromRGBO(64, 72, 191, 0.934)),
                  ),
                ),
                width: double.infinity,
                child: const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                    'Races won',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            // ignore: sized_box_for_whitespace
            Container(
              height: 400,
              width: double.infinity,
              child: Stack(
                children: [
                  ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return MyCollection();
                    },
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          end: Alignment.topCenter,
                          begin: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(13, 23, 36, 0),
                            Color.fromRGBO(13, 23, 36, 0.3),
                            Color.fromRGBO(13, 23, 36, 0.7),
                            Color.fromRGBO(13, 23, 36, 0.9),
                            Color.fromRGBO(13, 23, 36, 1),
                          ],
                        ),
                      ),
                      height: 15,
                      width: double.infinity,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(13, 23, 36, 0),
                            Color.fromRGBO(13, 23, 36, 0.3),
                            Color.fromRGBO(13, 23, 36, 0.7),
                            Color.fromRGBO(13, 23, 36, 0.9),
                            Color.fromRGBO(13, 23, 36, 1),
                          ],
                        ),
                      ),
                      height: 25,
                      width: double.infinity,
                    ),
                  ),
                ],
              ),
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
                  'Start driving',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCollection extends StatelessWidget {
  const MyCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Container(
        height: 200,
        width: 5,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          //color: Color.fromRGBO(13, 13, 13, 1),
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Row(
          children: [
            Image(
              image: AssetImage('assets/lsd_1.jpeg'),
              //image: AssetImage('assets/retro_drive.jpeg'),
            ),
          ],
        ),
      ),
    );
  }
}
