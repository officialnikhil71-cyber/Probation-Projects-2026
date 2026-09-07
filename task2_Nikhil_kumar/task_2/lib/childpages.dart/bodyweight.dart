import 'package:flutter/material.dart';
import 'package:task_2/childpages.dart/icontileforbody.dart';
import 'package:task_2/code_structure/bodyweighttrack.dart';
import 'package:task_2/code_widgets/container/specialcnt.dart';
import 'package:task_2/code_widgets/text/ttext.dart';

class Bodyweight extends StatelessWidget {
  const Bodyweight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(169, 39, 37, 37),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Ttext(
          note: 'Body Weight',
          szz: 22,
          ccolor: Colors.white,
          wgt: FontWeight.w600,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(14),
          children: const [
            Bodyweighttrack(),
            SizedBox(height: 10),
            SizedBox(
              child: Padding(
                padding: EdgeInsets.all(0),
                child: Specialcnt(
                  child1: Column(
                    children: [
                      Ttext(note: 'Weight goal:', ccolor: Colors.orange),
                      Ttext(note: '120 KG', ccolor: Colors.orange, szz: 16),
                    ],
                  ),
                  child2: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Ttext(note: 'Time left to goal', wgt: FontWeight.bold),
                      Ttext(note: '10/4/2026'),
                    ],
                  ),
                  child3: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [Icon(Icons.edit, size: 28, color: Colors.amber)],
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Ttext(note: ' WEEKLY WEIGHT LOG', szz: 15, ccolor: Colors.white),
            SizedBox(height: 10),
            Icontileforbody(
              icon: Icons.add,
              color: Color.fromARGB(255, 154, 144, 129),
              txt: Ttext(
                note: 'add Weight',
                ccolor: Colors.white,
                szz: 17,
                wgt: FontWeight.bold,
              ),
              subtxt: Ttext(note: '^_____^', ccolor: Colors.orange, szz: 18),
            ),
            SizedBox(height: 20),
            Icontileforbody(
              icon: Icons.edit,
              color: Colors.orange,
              txt: Ttext(
                note: 'Week9',
                ccolor: Colors.white,
                szz: 17,
                wgt: FontWeight.bold,
              ),
              subtxt: Ttext(note: '130 kg', ccolor: Colors.orange, szz: 18),
            ),
            SizedBox(height: 4),
            Icontileforbody(
              icon: Icons.edit,
              color: Colors.orange,
              txt: Ttext(
                note: 'Week8',
                ccolor: Colors.white,
                szz: 17,
                wgt: FontWeight.bold,
              ),
              subtxt: Ttext(note: '120 kg', ccolor: Colors.orange, szz: 18),
            ),
            SizedBox(height: 4),
            Icontileforbody(
              icon: Icons.edit,
              color: Colors.orange,
              txt: Ttext(
                note: 'Week7',
                ccolor: Colors.white,
                szz: 17,
                wgt: FontWeight.bold,
              ),
              subtxt: Ttext(note: '110 kg', ccolor: Colors.orange, szz: 18),
            ),
            SizedBox(height: 4),
            Icontileforbody(
              icon: Icons.edit,
              color: Colors.orange,
              txt: Ttext(
                note: 'Week6',
                ccolor: Colors.white,
                szz: 17,
                wgt: FontWeight.bold,
              ),
              subtxt: Ttext(note: '100 kg', ccolor: Colors.orange, szz: 18),
            ),
            SizedBox(height: 4),
            Icontileforbody(
              icon: Icons.edit,
              color: Colors.orange,
              txt: Ttext(
                note: 'Week5',
                ccolor: Colors.white,
                szz: 17,
                wgt: FontWeight.bold,
              ),
              subtxt: Ttext(note: '90 kg', ccolor: Colors.orange, szz: 18),
            ),
          ],
        ),
      ),
    );
  }
}
