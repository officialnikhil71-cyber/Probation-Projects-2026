import 'package:flutter/material.dart';
import 'package:task_2/code_structure/progressbar.dart';
import 'package:task_2/code_structure/ttextfield.dart';
import 'package:task_2/code_widgets/container/ccontainer.dart';
import 'package:task_2/code_widgets/container/container3.dart';
import 'package:task_2/code_widgets/text/ttext.dart';
import 'package:task_2/pagesOFapplication/actionpage.dart';

class Workoutpage extends StatelessWidget {
  const Workoutpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(169, 39, 37, 37),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        title: Ttext(note: 'Goals', szz: 22, wgt: FontWeight.bold),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(15),
          children: [
            SizedBox(height: 10),
            Progressbar(),
            SizedBox(height: 20),
            Ccontainer(
              cOlOr: Colors.white38,
              ccolor: const Color.fromARGB(255, 20, 21, 20),
              cchild: SizedBox(
                height: 48,
                child: Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        onPressed: () {},
                        child: const Ttext(note: 'Plans', wgt: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {},
                        child: const Ttext(note: 'Exercise'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 182, 25),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Actionpage()),
                );
              },
              child: Ttext(
                note: '+ Create new plan',
                szz: 20,
                ccolor: Colors.black,
              ),
            ),
            SizedBox(height: 30),
            Ttextfield(
              hinttext: 'search Plans or Exercise',
              icon: Icons.search,
            ),
            SizedBox(height: 30),
            Container3FromJson(
              workoutId: 1,
              trailingAction: GestureDetector(
                onTap: () {},
                child: const Text(
                  'Edit plan',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 6),
            Container3FromJson(
              workoutId: 1,
              trailingAction: GestureDetector(
                onTap: () {},
                child: const Text(
                  'Edit plan',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 6),
            Container3FromJson(
              workoutId: 1,
              trailingAction: GestureDetector(
                onTap: () {},
                child: const Text(
                  'Edit plan',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
