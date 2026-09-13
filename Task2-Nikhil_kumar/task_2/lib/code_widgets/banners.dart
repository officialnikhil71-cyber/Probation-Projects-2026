import 'package:flutter/material.dart';

class Banners extends StatelessWidget {
  final String imageUrl;
  const Banners({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        image: DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.fill),
      ),
    );
  }
}
