import 'package:flutter/material.dart';
import 'package:task_2/code_structure/progressbar.dart';
import 'package:task_2/code_widgets/container/container3.dart';
import 'package:task_2/code_widgets/text/ttext.dart';

class Summarypage extends StatelessWidget {
  const Summarypage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(169, 39, 37, 37),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Ttext(note: 'Workout summary', szz: 20),
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(14),
          children: [
            SizedBox(height: 20),
            Center(
              child: Ttext(note: 'Push Ups', szz: 19, wgt: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Progressbar(),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Ttext(note: 'overall reps:'),
                Ttext(note: '20 reps'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Ttext(note: 'overall sets:'),
                Ttext(note: '20 sets'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Ttext(note: 'Duration:'),
                Ttext(note: '45 Minutes'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Ttext(note: 'Total calories count'),
                Ttext(note: '356 kcal'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Ttext(note: 'T.U.T accuracy:'),
                Ttext(note: '68%'),
              ],
            ),
            SizedBox(height: 30),
            Ttext(note: 'Exercise Completed :', szz: 20, wgt: FontWeight.bold),
            SizedBox(height: 30),
            Container3FromJson(
              workoutId: 2,
              trailingAction: Icon(
                Icons.do_disturb_on_sharp,
                color: Colors.orange,
              ),
            ),
            SizedBox(height: 10),
            Container3FromJson(
              workoutId: 2,
              trailingAction: Icon(
                Icons.do_disturb_on_sharp,
                color: Colors.orange,
              ),
            ),
            SizedBox(height: 10),
            Container3FromJson(
              workoutId: 2,
              trailingAction: Icon(
                Icons.do_disturb_on_sharp,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
