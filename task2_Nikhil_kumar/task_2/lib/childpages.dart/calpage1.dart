import 'package:flutter/material.dart';
import 'package:task_2/childpages.dart/icontileforbody.dart';
import 'package:task_2/code_widgets/container/ccontainer.dart';
import 'package:task_2/code_widgets/container/container3.dart';
import 'package:task_2/code_widgets/text/ttext.dart';

class Calpage1 extends StatelessWidget {
  const Calpage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(169, 39, 37, 37),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        title: Ttext(note: 'Schedule a Plan', szz: 22, wgt: FontWeight.bold),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(18),
          children: [
            Ttext(note: 'October 5th,2023', szz: 20),
            SizedBox(height: 15),
            Ttext(note: 'add a workout plan'),
            SizedBox(height: 15),
            SizedBox(
              height: 150,
              width: double.infinity,
              child: Expanded(
                child: Ccontainer(
                  cOlOr: Colors.white54,
                  cchild: Center(child: Ttext(note: 'darg a plan here')),
                ),
              ),
            ),
            SizedBox(height: 30),
            Ttext(note: 'select work time'),
            SizedBox(height: 15),
            Icontileforbody(
              icon: Icons.arrow_drop_down,
              txt: Ttext(note: '11:30 pm'),
            ),
            SizedBox(height: 30),
            Container3FromJson(
              workoutId: 1,
              trailingAction: Icon(
                Icons.edit_note_outlined,
                color: Colors.orange,
              ),
            ),
            Container3FromJson(
              workoutId: 1,
              trailingAction: Icon(
                Icons.edit_note_outlined,
                color: Colors.orange,
              ),
            ),
            Container3FromJson(
              workoutId: 1,
              trailingAction: Icon(
                Icons.edit_note_outlined,
                color: Colors.orange,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 158, 55),
                ),
                child: Ttext(
                  note: 'Create Schedule',
                  wgt: FontWeight.bold,
                  szz: 19,
                  ccolor: const Color.fromARGB(255, 55, 48, 48),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
