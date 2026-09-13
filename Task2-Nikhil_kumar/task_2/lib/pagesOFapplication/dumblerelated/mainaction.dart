import 'package:flutter/material.dart';
import 'package:task_2/code_structure/icontileforbody.dart';
import 'package:task_2/code_contrast/appcolor.dart';
import 'package:task_2/code_structure/ttextfield.dart';
import 'package:task_2/code_widgets/buttons.dart/button1.dart';
import 'package:task_2/code_widgets/container/container3.dart';
import 'package:task_2/code_widgets/text/ttext.dart';
import 'package:task_2/pagesOFapplication/dumblerelated/basic.dart';

class Mainaction extends StatelessWidget {
  const Mainaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color.fromARGB(169, 39, 37, 37),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        title: Ttext(note: 'Create Exercise', szz: 22, wgt: FontWeight.bold),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.backgroundGradient),
        child: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(14),
            children: [
              SizedBox(height: 20),
              Basic(selectedIndex: 1),
              SizedBox(height: 30),
              Ttext(note: 'Other exercise', szz: 20),
              SizedBox(height: 10),
              Ttextfield(hinttext: 'Enter a title for the exercise'),
              SizedBox(height: 30),
              Container3FromJson(
                workoutId: 1,
                trailingAction: const Icon(
                  Icons.add,
                  color: Colors.orange,
                  size: 28,
                ),
              ),
              Container3FromJson(
                workoutId: 1,
                trailingAction: const Icon(
                  Icons.add,
                  color: Colors.orange,
                  size: 28,
                ),
              ),
              Container3FromJson(
                workoutId: 1,
                trailingAction: const Icon(
                  Icons.add,
                  color: Colors.orange,
                  size: 28,
                ),
              ),
              SizedBox(height: 15),
              Ttext(note: 'exercise'),
              SizedBox(height: 15),
              Icontileforbody(
                icon: Icons.arrow_drop_down,
                txt: Ttext(note: '2 months'),
                concolor: Colors.transparent,
              ),
              SizedBox(height: 10),
              Ttext(note: 'Main exercise', szz: 20),
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
              SizedBox(height: 26),
              Button1(note: 'Crete Plan'),
              SizedBox(height: 16),
              Button1(
                note: 'Crete Exercise',
                cl: AppColors.primary,
                colour: Colors.transparent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
