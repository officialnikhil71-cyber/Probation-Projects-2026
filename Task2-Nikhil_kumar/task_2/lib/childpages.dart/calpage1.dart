import 'package:flutter/material.dart';
import 'package:task_2/code_structure/icontileforbody.dart';
import 'package:task_2/code_contrast/appcolor.dart';
import 'package:mobkit_dashed_border/mobkit_dashed_border.dart';
import 'package:task_2/code_widgets/buttons.dart/button1.dart';
import 'package:task_2/code_widgets/container/container3.dart';
import 'package:task_2/code_widgets/text/ttext.dart';

class Calpage1 extends StatelessWidget {
  const Calpage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        title: Ttext(note: 'Schedule a Plan', szz: 22, wgt: FontWeight.bold),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(gradient: AppColors.backgroundGradient),
        child: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(18),
            children: [
              Ttext(note: 'October 5th,2023', szz: 20),
              SizedBox(height: 15),
              Ttext(note: 'add a workout plan'),
              SizedBox(height: 15),
              SizedBox(
                width: double.infinity,
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                    border: DashedBorder.fromBorderSide(
                      dashLength: 8,
                      side: BorderSide(color: Colors.white30, width: 2),
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Ttext(
                      note: 'drag a Plan here',
                      ccolor: Colors.white38,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Ttext(note: 'select work time'),
              SizedBox(height: 15),
              Icontileforbody(
                icon: Icons.arrow_drop_down,
                txt: Ttext(note: '11:30 pm'),
                concolor: Colors.transparent,
              ),
              SizedBox(height: 30),
              Container3FromJson(
                workoutId: 1,
                trailingAction: Icon(Icons.add, color: Colors.orange),
              ),
              Container3FromJson(
                workoutId: 1,
                trailingAction: Icon(Icons.add, color: Colors.orange),
              ),
              Container3FromJson(
                workoutId: 1,
                trailingAction: Icon(Icons.add, color: Colors.orange),
              ),
              Container3FromJson(
                workoutId: 1,
                trailingAction: Icon(Icons.add, color: Colors.orange),
              ),
              SizedBox(height: 20),
              Button1(note: 'Create Schedule'),
            ],
          ),
        ),
      ),
    );
  }
}
