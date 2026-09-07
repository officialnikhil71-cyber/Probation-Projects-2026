import 'package:flutter/material.dart';

class Progressbar extends StatelessWidget {
  const Progressbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Overall Progress",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 253, 253),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "68%",
                style: TextStyle(
                  color: Color.fromARGB(255, 246, 246, 246),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: const LinearProgressIndicator(
              value: 0.68,
              minHeight: 10,
              backgroundColor: Color(0xFF2C2F36),
              valueColor: AlwaysStoppedAnimation<Color>(
                Color.fromARGB(255, 255, 87, 87),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
