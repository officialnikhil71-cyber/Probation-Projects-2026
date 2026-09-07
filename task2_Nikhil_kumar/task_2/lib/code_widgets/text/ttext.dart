import 'package:flutter/material.dart';

class Ttext extends StatelessWidget {
  final String note;
  final Color ccolor;
  final FontWeight wgt;
  final double szz;

  const Ttext({
    super.key,
    required this.note,
    this.ccolor = Colors.white,
    this.szz = 15,
    this.wgt = FontWeight.w400,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      note,
      style: TextStyle(color: ccolor, fontWeight: wgt, fontSize: szz),
    );
  }
}
