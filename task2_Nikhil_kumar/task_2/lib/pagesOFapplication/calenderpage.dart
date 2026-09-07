import 'package:flutter/material.dart';
import 'package:task_2/childpages.dart/calender.dart';
import 'package:task_2/childpages.dart/calpage1.dart';
import 'package:task_2/childpages.dart/history.dart';
import 'package:task_2/code_widgets/container/container3.dart';
import 'package:task_2/code_widgets/text/ttext.dart';

class Calenderpage extends StatelessWidget {
  const Calenderpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(169, 39, 37, 37),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Ttext(
          note: 'CALENDER',
          szz: 22,
          wgt: FontWeight.w600,
          ccolor: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(14.0),
          children: [
            CalendarCardWidget(),
            SizedBox(height: 10),
            Ttext(note: 'Plans Today', szz: 16),
            SizedBox(height: 10),
            Container3FromJson(
              workoutId: 1,
              trailingAction: Ttext(note: 'All day today'),
            ),
            SizedBox(height: 10),
            Container3FromJson(
              workoutId: 1,
              trailingAction: Ttext(note: 'All day today'),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  overlayColor: Colors.orange,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Calpage1()),
                  );
                },
                child: Ttext(
                  note: '+ add a plan',
                  szz: 19,
                  ccolor: Colors.orange,
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  overlayColor: Colors.orange,
                ),
                onPressed: () {
                      Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => History()),
                  );
                },
                child: Ttext(note: '◷ History', szz: 22, ccolor: Colors.orange),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
