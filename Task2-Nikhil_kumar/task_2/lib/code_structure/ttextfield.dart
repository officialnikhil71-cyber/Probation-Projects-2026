import 'package:flutter/material.dart';
import 'package:task_2/code_contrast/appcolor.dart';

class Ttextfield extends StatelessWidget {
  final String hinttext;
  final double? radi;
  final IconData? icon;
  const Ttextfield({
    super.key,
    required this.hinttext,
    this.icon,
    this.radi = 4,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextField(
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.textDark,
          hintText: hinttext,
          hintStyle: const TextStyle(color: Color.fromARGB(211, 238, 236, 236)),
          prefixIcon: Icon(
            icon,
            color: const Color.fromARGB(255, 237, 235, 235),
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 0,
            horizontal: 20,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radi!),
            borderSide: BorderSide(color: Colors.white, width: 1.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radi!),
            borderSide: BorderSide(color: Colors.white, width: 1.5),
          ),
        ),
      ),
    );
  }
}
