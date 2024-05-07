import 'package:beskarapp/assets/tiles.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                  child: Center(
                child: Icon(
                  Icons.shopping_bag_rounded,
                  size: 72,
                  color: Colors.black,
                ),
              )),
              const SizedBox(
                height: 25,
              ),
              MyList(
                text: "Shop",
                icon: Icons.home_filled,
                onTap: () => Navigator.pop(context),
              ),
              MyList(
                  text: "Cart",
                  icon: Icons.shopping_cart,
                  onTap: () => Navigator.pushNamed(context, '/cart_page')),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: MyList(text: "Exit", icon: Icons.exit_to_app, onTap: () {}),
          ),
        ],
      ),
    );
  }
}
