import 'package:flutter/material.dart';
import 'package:task_2/code_contrast/appcolor.dart';
import 'package:task_2/code_structure/icontileforbody.dart';
import 'package:task_2/code_structure/gridview.dart';
import 'package:task_2/code_structure/ttextfield.dart';
import 'package:task_2/code_widgets/text/ttext.dart';
// import 'package:task_2/pagesOFapplication/dumblerelated/actionpage2.dart';
import 'package:task_2/pagesOFapplication/dumblerelated/basic.dart';
// import 'package:task_2/pagesOFapplication/dumblerelated/mainaction.dart';

class Actionpage extends StatelessWidget {
  const Actionpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
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
              Basic(selectedIndex: 0),

              SizedBox(height: 50),
              Ttext(note: 'Regular excerise', szz: 20),
              SizedBox(height: 10),
              Ttextfield(hinttext: 'Enter a title for the exercise'),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Ttext(note: 'Set Goal'),
                  VerticalDivider(width: 5),
                  Icon(Icons.info, color: Colors.white),
                ],
              ),
              SizedBox(height: 15),
              Icontileforbody(
                icon: Icons.arrow_drop_down_rounded,
                txt: Ttext(note: '2 months'),
                concolor: Colors.transparent,
              ),
              SizedBox(height: 30),
              GridvieW(txt: 'Create Workout'),
            ],
          ),
        ),
      ),
    );
  }
}
