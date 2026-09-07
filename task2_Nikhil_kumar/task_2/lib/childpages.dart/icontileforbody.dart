import 'package:flutter/material.dart';
import 'package:task_2/code_widgets/container/ccontainer.dart';
import 'package:task_2/code_widgets/text/ttext.dart';

class Icontileforbody extends StatelessWidget {
  final IconData icon;
  final Ttext txt;
  final VoidCallback? onpressed;
  final Color color;
  final Ttext? subtxt;

  const Icontileforbody({
    super.key,
    required this.icon,
    required this.txt,
     this.subtxt,
    this.onpressed,
    this.color = const Color.fromARGB(255, 195, 187, 187),
  });

  @override
  Widget build(BuildContext context) {
    return Ccontainer(
      cOlOr: const Color.fromARGB(136, 96, 89, 89),
      ccolor: const Color.fromARGB(255, 1, 1, 1),
      cchild: ListTile(
        leading: txt,
        title: Center(child: subtxt),
        trailing: IconButton(
          onPressed: onpressed,
          icon: Icon(icon, color: color, size: 32),
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
        ),
      ),
    );
  }
}
