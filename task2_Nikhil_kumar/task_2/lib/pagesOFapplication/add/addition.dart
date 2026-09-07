import 'package:flutter/material.dart';
import 'package:task_2/code_widgets/container/ccontainer.dart';
import 'package:task_2/code_widgets/container/container3.dart';
import 'package:task_2/code_widgets/text/ttext.dart';
import 'package:task_2/pagesOFapplication/add/summarypage.dart';
import 'package:task_2/pagesOFapplication/add/timer.dart';

class Addition extends StatelessWidget {
  const Addition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(169, 39, 37, 37),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Ttext(note: 'Workout', szz: 22, wgt: FontWeight.bold),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.format_line_spacing_rounded,
              color: Colors.redAccent,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Summarypage()),
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            Ccontainer(
              cOlOr: Colors.white54,
              ccolor: const Color.fromARGB(255, 50, 43, 41),
              cchild: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.watch, size: 30, color: Colors.orange),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Ttext(note: 'PushUps'),
                        SizedBox(height: 20),
                        Ttext(note: 'Reps :10', szz: 20),
                        SizedBox(height: 20),
                        Ttext(note: 'completed sets'),
                        Ttext(note: '3/5'),
                        SizedBox(height: 20),
                        OutlinedButton.icon(
                          onPressed: () {},
                          label: Ttext(note: 'weight:150 lbs', szz: 11),
                        ),
                      ],
                    ),
                    Icon(Icons.star_border, size: 30, color: Colors.orange),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 110),
              child: Ccontainer(
                ccolor: Colors.black,
                cOlOr: Colors.orange,
                cchild: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Ttext(note: 'Rest: 80 seconds', ccolor: Colors.orange),
                    Icon(Icons.edit, color: Colors.orange),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            WorkoutTimer(),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Ttext(note: 'Reps:'),
                  Ttext(note: 'Sets:'),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container3FromJson(
              workoutId: 1,
              trailingAction: Icon(Icons.fast_forward, color: Colors.orange),
            ),
          ],
        ),
      ),
    );
  }
}
