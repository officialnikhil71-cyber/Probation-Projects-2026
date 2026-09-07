import 'package:flutter/material.dart';

class Banners extends StatelessWidget {
  final Widget child;
  final String imageUrl;
  const Banners({super.key, required this.child, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.red.shade400),
        image: DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover),
      ),
      child: child,
    );
  }
}
