import 'package:flutter/material.dart';
import 'package:task_2/code_widgets/text/ttext.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Listtileforsetting extends StatelessWidget {
  final String icon;
  final Ttext txt;
  final VoidCallback? onpressed;
  final Color color;

  const Listtileforsetting({
    super.key,
    required this.icon,
    required this.txt,
    this.onpressed,
    this.color = const Color.fromARGB(255, 195, 187, 187),
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: InkWell(
        onTap: onpressed,
        borderRadius: BorderRadius.circular(20),
        child: SizedBox(
          width: 70,
          height: 70,
          child: SvgPicture.asset(
            icon,
            fit: BoxFit.contain,
            alignment: Alignment.center,
          ),
        ),
      ),
      title: txt,
    );
  }
}
