import 'package:flutter/material.dart';
import 'package:task_2/childpages.dart/metrics.dart';
import 'package:task_2/code_structure/progressbar.dart';
import 'package:task_2/code_widgets/container/container3.dart';
import 'package:task_2/code_widgets/floatingnavigationbar/floatingnavigationbar.dart';
import 'package:task_2/pagesOFapplication/actionpage.dart';
import '../code_widgets/banners.dart';
import '../code_widgets/text/ttext.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(169, 39, 37, 37),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(top: 10, bottom: 10, left: 18, right: 18),
          children: [
            const SizedBox(height: 30),
            SizedBox(
              height: 150,
              child: PageView(
                children: [
                  Banners(
                    imageUrl: 'assets/images/image1.jpg',
                    child: Text(''),
                  ),
                  Banners(
                    imageUrl: 'assets/images/image1.jpg',
                    child: Text(''),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Progressbar(),
            const SizedBox(height: 20),
            Container3FromJson(
              workoutId: 1,
              date: 'Your next Workout',
              trailingAction: OutlinedButton(
                onPressed: () {},
                child: Ttext(
                  note: 'Start workout',
                  szz: 12,
                  wgt: FontWeight.bold,
                  ccolor: Colors.orange,
                ),
              ),
            ),
            SizedBox(height: 15),
            Container3FromJson(
              workoutId: 1,
              date: 'Your last Workout',
              trailingAction: OutlinedButton(
                onPressed: () {},
                child: Ttext(
                  note: 'redo workout',
                  szz: 12,
                  wgt: FontWeight.bold,
                  ccolor: Colors.orange,
                ),
              ),
            ),
            // const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 158, 55),
                ),
                child: Ttext(
                  note: 'Create new plan',
                  szz: 23,
                  ccolor: const Color.fromARGB(255, 55, 48, 48),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Actionpage()),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.insert_chart_outlined,
                      color: Colors.red.shade400,
                      size: 26,
                    ),
                    const SizedBox(width: 10),
                    Ttext(
                      note: 'See metrics',
                      szz: 25,
                      ccolor: const Color.fromARGB(255, 248, 65, 65),
                      wgt: FontWeight.w300,
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Metrics()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Floatingnavigationbar(),
    );
  }
}
