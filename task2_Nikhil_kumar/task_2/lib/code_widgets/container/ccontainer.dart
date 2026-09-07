import 'package:flutter/material.dart';

class Ccontainer extends StatelessWidget {
  final Widget cchild;
  final Color ccolor;
  final bool shadow;
  final Color cOlOr;

  const Ccontainer({
    super.key,
    required this.cchild,
    this.ccolor = Colors.transparent,
    this.shadow = false,
    this.cOlOr = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: ccolor,
        border: Border.all(color: cOlOr),
        boxShadow: shadow
            ? [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(0, 4),
                ),
              ]
            : [],
      ),
      child: cchild,
    );
  }
}
