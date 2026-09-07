import 'package:flutter/material.dart';

class Ccard extends StatelessWidget {
  final Widget child;
  const Ccard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      child: Padding(padding: EdgeInsets.all(16), child: child),
    ); 
  }
}
