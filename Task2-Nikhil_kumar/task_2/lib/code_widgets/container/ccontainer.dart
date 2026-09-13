import 'package:flutter/material.dart';

class Ccontainer extends StatelessWidget {
  final Widget cchild;
  final Color? ccolor;
  final bool shadow;
  final Color cOlOr;
  final Gradient? gradiennt;

  const Ccontainer({
    super.key,
    required this.cchild,
    this.ccolor,
    this.shadow = false,
    this.cOlOr = Colors.transparent,
    this.gradiennt,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: gradiennt == null ? (ccolor ?? Colors.transparent) : null,
        border: Border.all(color: cOlOr),
        gradient: gradiennt,
        boxShadow: shadow
            ? const [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(0, 4),
                ),
              ]
            : null,
      ),
      child: cchild,
    );
  }
}
