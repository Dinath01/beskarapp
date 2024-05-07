import 'package:flutter/material.dart';

class ButtonOne extends StatelessWidget {
  final void Function()? onTap;
  final Widget child;

  const ButtonOne({
    super.key,
    required this.onTap,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 45, 13, 77),
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(25),
        child: child,
      ),
    );
  }
}