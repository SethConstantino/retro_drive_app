import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:retro_drive_app/presentation/screens/loading_screen.dart';
import 'package:retro_drive_app/presentation/widgets/collection_images.dart';
import 'package:retro_drive_app/services/collection_service.dart';

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
                      _HeaderMenu(),
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
              const _ItemSideMenu(
                icon: Icons.home_filled,
                nextPage: 'homeScreen',
                text: 'Home',
              ),
              const SizedBox(height: 40),
              const _ItemSideMenu(
                icon: Icons.person_outline_rounded,
                nextPage: 'profileScreen',
                text: 'Profile',
              ),
              const SizedBox(height: 40),
              const _ItemSideMenu(
                icon: Icons.settings,
                nextPage: 'settingsScreen',
                text: 'Settings',
              ),
              const SizedBox(height: 40),
              const _ItemSideMenu(
                icon: Icons.logout_rounded,
                nextPage: 'startScreen',
                text: 'Logout',
              ),
            ],
          ),
        ),
        body: _HomeBody(),
      ),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        _HomeTopStack(height: height),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Color.fromRGBO(64, 72, 191, 0.934)),
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
        _HomeMainBody(height: height),
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
              Navigator.pushReplacementNamed(context, 'timeSettingScreen');
            },
            child: const Text(
              'Start driving',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class _HomeMainBody extends StatelessWidget {
  const _HomeMainBody({required this.height});

  final double height;

  @override
  Widget build(BuildContext context) {
    final collectionService = Provider.of<CollectionService>(context);
    //print('txt ${collectionService.collections[0].name}');

    //if (collectionService.isLoading) return LoadingScreen();

    return SizedBox(
      height: height * 0.5,
      width: double.infinity,
      child: Stack(
        children: [
          ListView.builder(
            itemCount: collectionService.collections.length,
            itemBuilder: (context, index) {
              return Visibility(
                visible: (collectionService.collections[index].visible == 1),
                child: MyCollection(
                  collection: collectionService.collections[index],
                ),
              );
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
    );
  }
}

class _HomeTopStack extends StatelessWidget {
  const _HomeTopStack({
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Stack(
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
        const Column(
          children: [
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 90),
              child: Image(
                image: AssetImage('assets/retro_drive.jpeg'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _ItemSideMenu extends StatelessWidget {
  final IconData icon;
  final String text;
  final String nextPage;

  const _ItemSideMenu({
    required this.icon,
    required this.text,
    required this.nextPage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          icon: Icon(
            icon,
            color: Colors.white,
            size: 37,
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(context, nextPage);
          },
          label: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}

class _HeaderMenu extends StatelessWidget {
  const _HeaderMenu({super.key});

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
