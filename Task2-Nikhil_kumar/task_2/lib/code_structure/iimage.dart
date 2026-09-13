import 'package:flutter/material.dart';

class Iimage extends StatelessWidget {
  final String urll;
  final double size;
  const Iimage({super.key, required this.urll, this.size = 16});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size),
      child: Image.asset(urll),
    );
  }
}
