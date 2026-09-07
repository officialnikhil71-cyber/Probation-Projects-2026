import 'package:flutter/material.dart';
import 'package:task_2/childpages.dart/calorieshelper.dart';
import 'package:task_2/childpages.dart/icontileforbody.dart';
import 'package:task_2/code_widgets/container/specialcnt.dart';
import 'package:task_2/code_widgets/text/ttext.dart';

class Calories extends StatelessWidget {
  const Calories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(169, 39, 37, 37),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        title: Ttext(note: 'Calories', szz: 22, wgt: FontWeight.bold),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            SizedBox(height: 30),
            Calorieshelper(
              heigt: 160,
              width: 160,
              heigtstack: 150,
              widthstack: 150,
              strokewitdth: 14,
              icoN: true,
            ),
            SizedBox(height: 30),
            Center(child: Ttext(note: '🔥 Total Calories burned', szz: 20)),
            SizedBox(height: 10),
            Center(
              child: Ttext(
                note: 'those number are based on distance and weight',
                szz: 13,
              ),
            ),
            SizedBox(height: 30),
            Icontileforbody(
              icon: Icons.add,
              color: Colors.orange,
              txt: Ttext(note: "Add Calories"),
              subtxt: Ttext(note: "________"),
            ),
            SizedBox(height: 25),
            Ttext(note: ' This Week 🔻'),
            SizedBox(height: 25),
            Specialcnt(
              child1: Column(
                children: [
                  Ttext(note: 'today:', ccolor: Colors.orange),
                  Padding(
                    padding: EdgeInsetsGeometry.all(18),
                    child: Calorieshelper(
                      heigt: 90,
                      width: 90,
                      widthstack: 100,
                      heigtstack: 100,
                      strokewitdth: 8,
                      icoN: false,
                    ),
                  ),
                ],
              ),
              child2: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Ttext(note: 'Push Ups', szz: 22, wgt: FontWeight.bold),
                ],
              ),
              child3: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Ttext(note: 'Reps Completed:  ', szz: 12),
                  Ttext(note: '8/10', ccolor: Colors.orange),
                ],
              ),
            ),
            SizedBox(height: 10),
            Specialcnt(
              child1: Column(
                children: [
                  Ttext(note: 'tuesday:', ccolor: Colors.orange),
                  Padding(
                    padding: EdgeInsetsGeometry.all(18),
                    child: Calorieshelper(
                      heigt: 90,
                      width: 90,
                      widthstack: 100,
                      heigtstack: 100,
                      strokewitdth: 8,
                      icoN: false,
                    ),
                  ),
                ],
              ),
              child2: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Ttext(note: 'Squats', szz: 22, wgt: FontWeight.bold),
                ],
              ),
              child3: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Ttext(note: 'Reps Completed:  ', szz: 12),
                  Ttext(note: '8/10', ccolor: Colors.orange),
                ],
              ),
            ),
            SizedBox(height: 10),
            Specialcnt(
              child1: Column(
                children: [
                  Ttext(note: 'Monday:', ccolor: Colors.orange),
                  Padding(
                    padding: EdgeInsetsGeometry.all(18),
                    child: Calorieshelper(
                      heigt: 90,
                      width: 90,
                      widthstack: 100,
                      heigtstack: 100,
                      strokewitdth: 8,
                      icoN: false,
                    ),
                  ),
                ],
              ),
              child2: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Ttext(note: 'Deadlift', szz: 22, wgt: FontWeight.bold),
                ],
              ),
              child3: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Ttext(note: 'Reps Completed:  ', szz: 12),
                  Ttext(note: '8/10', ccolor: Colors.orange),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
