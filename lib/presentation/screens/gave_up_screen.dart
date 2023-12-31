import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:retro_drive_app/presentation/widgets/collection_images.dart';
import 'package:retro_drive_app/services/collection_service.dart';

class GaveUpScreen extends StatelessWidget {
  const GaveUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    final collectionService = Provider.of<CollectionService>(context);

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 90),
              child: Image(
                image: AssetImage('assets/retro_drive.jpeg'),
              ),
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
                  child: Row(
                    children: [
                      Text(
                        'You\'ve lost this  ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Icon(
                        Icons.sentiment_dissatisfied_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.5,
              width: double.infinity,
              child: Stack(
                children: [
                  ListView.builder(
                    itemCount: collectionService.collections.length,
                    itemBuilder: (context, index) {
                      return Visibility(
                        visible:
                            (collectionService.collections[index].visible == 2),
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
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromRGBO(64, 72, 191, 1),
                    Color.fromRGBO(74, 199, 191, 1),
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
              height: height > 56 ? 56 : height * 0.06,
              width: width * 0.85,
              child: TextButton(
                child: const Text(
                  'OK',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, 'homeScreen');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
