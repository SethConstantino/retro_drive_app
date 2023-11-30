import 'package:flutter/material.dart';
import 'package:retro_drive_app/models/collection.dart';

class MyCollection extends StatelessWidget {
  final Collection collection;

  const MyCollection({super.key, required this.collection});

  @override
  Widget build(BuildContext context) {
    print('\ntxt coll name: ${collection.name}');
    print('txt coll img0: ${collection.images[0]}');
    print('txt coll img1: ${collection.images.length}');
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Container(
        height: 190,
        width: 5,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Color.fromRGBO(13, 13, 13, 1),
        ),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15, left: 15),
                child: Text(
                  collection.name,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(135, 67, 255, 1),
                          Color.fromRGBO(65, 54, 241, 1),
                        ],
                      ),
                    ),
                    height: 120,
                    width: 120,
                    child: const Center(
                      child: Image(
                        width: 90,
                        image: AssetImage('assets/lsd_1.jpeg'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
