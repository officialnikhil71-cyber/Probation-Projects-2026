
import 'package:flutter/material.dart';

class Giveinfo extends StatelessWidget {
  final IconData icon;
  final String title;
  final String discript;
  final VoidCallback? onPressed;

  const Giveinfo({
    super.key,
    required this.icon,
    required this.title,
    required this.discript,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: onPressed,
            icon: Icon(icon, color: Colors.redAccent, size: 45),
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.w500,
              fontSize: 17.7,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            discript,
            style: const TextStyle(
              color: Color.fromARGB(255, 227, 222, 222),
              fontSize: 13.5,
            ),
          ),
        ],
      ),
    );
  }
}