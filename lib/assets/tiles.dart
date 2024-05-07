import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onTap;

  const MyList({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.black,
        ),
        title: Text(text),
        onTap: () {},
      ),
    );
  }
}