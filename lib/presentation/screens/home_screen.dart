import 'package:flutter/material.dart';
import 'package:retro_drive_app/presentation/screens/profile_screen.dart';
import 'package:retro_drive_app/presentation/screens/settings_screen.dart';
import 'package:retro_drive_app/presentation/screens/start_screen.dart';
import 'package:retro_drive_app/presentation/screens/time_setting.dart';
import 'package:retro_drive_app/presentation/widgets/collection.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          backgroundColor: const Color.fromRGBO(13, 23, 36, 1),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const Center(
                child: SizedBox(
                  height: 250,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      HeaderMenu(),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  color: const Color.fromRGBO(64, 72, 191, 0.5),
                  width: double.infinity,
                  height: 2,
                ),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(20, 103, 204, 0.1),
                        blurRadius: 30,
                      ),
                    ],
                  ),
                  height: 40,
                  child: TextButton.icon(
                    icon: const Icon(
                      Icons.home_filled,
                      color: Colors.white,
                      size: 37,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    label: const Text(
                      'Home',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(20, 103, 204, 0.1),
                        blurRadius: 30,
                      ),
                    ],
                  ),
                  height: 40,
                  child: TextButton.icon(
                    icon: const Icon(
                      Icons.person_outline_rounded,
                      color: Colors.white,
                      size: 37,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfileScreen(),
                        ),
                      );
                    },
                    label: const Text(
                      'Profile',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(20, 103, 204, 0.1),
                        blurRadius: 30,
                      ),
                    ],
                  ),
                  height: 40,
                  child: TextButton.icon(
                    icon: const Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 37,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SettingsScreen(),
                        ),
                      );
                    },
                    label: const Text(
                      'Settings',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(20, 103, 204, 0.1),
                        blurRadius: 30,
                      ),
                    ],
                  ),
                  height: 40,
                  child: TextButton.icon(
                    icon: const Icon(
                      Icons.logout_rounded,
                      color: Colors.white,
                      size: 37,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const StartScreen(),
                        ),
                      );
                    },
                    label: const Text(
                      'Logout',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
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
                        child: Builder(
                          builder: (BuildContext context) {
                            return Center(
                              child: IconButton(
                                onPressed: () {
                                  Scaffold.of(context).openDrawer();
                                },
                                icon: const Icon(
                                  //Icons.arrow_back_ios_new_rounded,
                                  Icons.menu,
                                  color: Colors.white,
                                ),
                              ),
                            );
                          },
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
                        return const MyCollection();
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
                        builder: (context) => const TimeSettingScreen(),
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
      ),
    );
  }
}

class HeaderMenu extends StatelessWidget {
  const HeaderMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
          const SizedBox(height: 40),
          const Text(
            'SCJ99',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            'Seth Constantino',
            style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 0.5),
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
