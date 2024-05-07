import 'package:beskarapp/Pages/cart_page.dart';
import 'package:beskarapp/Pages/intro_page.dart';
import 'package:beskarapp/Pages/landing_page.dart';
import 'package:beskarapp/Pages/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      routes: {
        '/into_page':(context) => const IntroPage(),
        '/landing_page':(context) => const LandPage(),
        '/shop_page':(context) => const ShopPage(),
        '/cart_page':(context) => const ShoppingCart(),
      },
    );
  } 
}
