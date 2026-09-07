import 'package:flutter/material.dart';
import 'package:task_2/code_widgets/container/container3.dart';
import 'package:task_2/code_widgets/text/ttext.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(169, 39, 37, 37),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        title: Ttext(note: 'history', szz: 22, wgt: FontWeight.bold),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(15),
          children: [
            Container3FromJson(
              workoutId: 1,
              date: 'September 31,2026',
            ),
            Container3FromJson(
              workoutId: 1,
              date: 'September 30,2026',
            ),
            Container3FromJson(
              workoutId: 1,
              date: 'September 29,2026',
            ),
            Container3FromJson(
              workoutId: 1,
              date: 'September 28,2026',
            ),
            Container3FromJson(
              workoutId: 1,
              date: 'September 27,2026',
            ),
            Container3FromJson(
              workoutId: 1,
              date: 'September 26,2026',
            ),
          ],
        ),
      ),
    );
  }
}
