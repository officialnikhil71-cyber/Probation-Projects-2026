import 'package:flutter/material.dart';

class Specialcnt extends StatelessWidget {
  final Widget? child1;
  final Widget? child2;
  final Widget? child3;
  final Widget? child4;
  final Widget? child5;
  final Widget? child6;

  const Specialcnt({
    super.key,
    this.child1,
    this.child2,
    this.child3,
    this.child4,
    this.child5,
    this.child6,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 48, 45, 45),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: const Color.fromARGB(255, 113, 111, 111)),
        ),

        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget?>[
              child1,
              child2,
              child3,
              child4,
              child5,
              child6,
            ].whereType<Widget>().toList(),
          ),
        ),
      ),
    );
  }
}
