import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Giveinfo extends StatelessWidget {
  final String icon;
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
            icon: SvgPicture.asset(icon, width: 60, height: 60),
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
