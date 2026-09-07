import 'package:flutter/material.dart';
import 'package:task_2/childpages.dart/icontileforbody.dart';
import 'package:task_2/code_structure/gridview.dart';
import 'package:task_2/code_structure/ttextfield.dart';
import 'package:task_2/code_widgets/text/ttext.dart';
import 'package:task_2/pagesOFapplication/actionpage2.dart';
import 'package:task_2/pagesOFapplication/mainaction.dart';

class Actionpage extends StatelessWidget {
  const Actionpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(169, 39, 37, 37),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        title: Ttext(note: 'Create Exercise', szz: 22, wgt: FontWeight.bold),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(14),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.wallet_sharp,
                        size: 40,
                        color: Colors.orange,
                      ),
                    ),
                    const Ttext(note: 'Warm up'),
                  ],
                ),
                const VerticalDivider(width: 5),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Mainaction()),
                        );
                      },
                      icon: const Icon(
                        Icons.watch_later_outlined,
                        size: 40,
                        color: Colors.orange,
                      ),
                    ),
                    const Ttext(note: 'Main'),
                  ],
                ),
                const VerticalDivider(width: 5),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Actionpage2(),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.donut_small_rounded,
                        size: 40,
                        color: Colors.orange,
                      ),
                    ),
                    const Ttext(note: 'Cool down'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            Ttext(note: 'Regular excerise', szz: 20),
            SizedBox(height: 10),
            Ttextfield(hinttext: 'Enter a title for the exercise'),
            SizedBox(height: 15),
            Ttext(note: 'set goal 💠'),
            SizedBox(height: 15),
            Icontileforbody(
              icon: Icons.arrow_drop_down_circle_outlined,
              txt: Ttext(note: '2 months'),
            ),
            GridvieW(txt: 'Create Workout'),
          ],
        ),
      ),
    );
  }
}
