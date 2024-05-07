import 'package:beskarapp/assets/button1.dart';
import 'package:flutter/material.dart';

class LandPage extends StatelessWidget {
  const LandPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(fit: StackFit.expand, children: [
          Image.asset(
            'assets/background.jpg',
            fit: BoxFit.cover,
          ),
          Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(
                Icons.shopping_bag,
                size: 72,
                color: Colors.white,
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                "Clothing Store",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, fontFamily: "Medium", color: Colors.white),
                ),
              const SizedBox(
                height: 25,
              ),
              ButtonOne(onTap: () => Navigator.pushNamed(context, '/shop_page' ), child: Icon(Icons.arrow_forward))

            ]),
          ),
        ]));
  }
}
