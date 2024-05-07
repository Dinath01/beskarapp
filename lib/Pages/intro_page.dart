import 'package:beskarapp/Pages/home_page.dart';
import 'package:beskarapp/Pages/landing_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 3)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LandPage()),
            );
          });
        }

        return Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/splashbg.jpg'),
                  fit: BoxFit
                      .cover, 
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
