import 'package:flutter/material.dart';

class AppColors {
  static const LinearGradient backgroundGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.23, 0.70],
    colors: [Color(0xFF353A40), Color(0xFF121416)],
  );
  static const LinearGradient background2Gradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.23, 0.70],
    colors: [Color(0xFF121416), Color(0xFF353A40)],
  );

  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [Color(0xFFF37D3C), Color(0xFFDC5C17)],
  );

  static const LinearGradient orangeGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.0, 0.45, 1.0],
    colors: [
      Color.fromARGB(255, 70, 43, 31),
      Color(0xFF1B1B1E),
      Color(0xFF16171B),
    ],
  );

  static const RadialGradient orange2Gradient = RadialGradient(
    center: Alignment(-0.10, -1.05),
    radius: 0.70,
    stops: [0.0, 0.35, 0.75, 1.0],
    colors: [
      Color.fromARGB(255, 60, 40, 23),
      Color.fromARGB(255, 59, 41, 26),
      Color(0xFF211C17),
      Color(0xFF161511),
    ],
  );

  // Blue Gradient
  static const LinearGradient blueGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF5F5FFF), Color(0xFF1ED6FF)],
  );

  static const Color primary = Color(0xFFF07028);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF121316);
  static const Color textDark = Color(0xFF3F3F46);
  static const Color textGrey = Color(0xFF8F939D);
  static const Color textLight = Color(0xFFA1A1AA);
  static const Color greyBorder = Color(0xFF26282F);
  static const Color greyBackground = Color(0xFF1E2128);
  static const Color green = Color(0xFF49D882);
}
