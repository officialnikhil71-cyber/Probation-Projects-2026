import 'package:flutter/material.dart';
import 'package:task_2/code_contrast/appcolor.dart';
import 'package:task_2/code_structure/icontileforbody.dart';
import 'package:task_2/code_structure/gridview.dart';
import 'package:task_2/code_structure/ttextfield.dart';
import 'package:task_2/code_widgets/text/ttext.dart';
// import 'package:task_2/pagesOFapplication/dumblerelated/actionpage.dart';
import 'package:task_2/pagesOFapplication/dumblerelated/basic.dart';
// import 'package:task_2/pagesOFapplication/dumblerelated/mainaction.dart';

class Actionpage2 extends StatelessWidget {
  const Actionpage2({super.key});

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
              Basic(selectedIndex: 2),
              SizedBox(height: 30),
              Ttext(note: 'Super Set (1 of 5)', szz: 20),
              SizedBox(height: 10),
              Ttextfield(hinttext: 'Enter a title for the exercise'),
              SizedBox(height: 15),
              Ttext(note: 'exercise duration'),
              SizedBox(height: 15),
              Icontileforbody(
                icon: Icons.arrow_drop_down,
                txt: Ttext(note: '2 months'),
                concolor: Colors.transparent,
              ),
              GridvieW(txt: 'Next Set'),
            ],
          ),
        ),
      ),
    );
  }
}
