import 'package:flutter/material.dart';
import 'package:task_2/code_widgets/text/ttext.dart';

class Listtileforsetting extends StatelessWidget {
  final IconData icon;
  final Ttext txt;
  final VoidCallback? onpressed;
  final Color color;

  const Listtileforsetting({
    super.key,
    required this.icon,
    // required this.subtxt,
    required this.txt,
    this.onpressed,
    this.color = const Color.fromARGB(255, 195, 187, 187),
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        onPressed: onpressed,
        icon: Icon(icon, color: color, size: 32),
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
      ),
      title: txt,
      // subtitle: subtxt,
    );
  }
}
