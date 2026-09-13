import 'package:flutter/material.dart';
import 'package:task_2/code_contrast/appcolor.dart';
import 'package:task_2/code_structure/icontileforbody.dart';
import 'package:task_2/code_structure/bodyweighttrack.dart';
import 'package:task_2/code_widgets/container/specialcnt.dart';
import 'package:task_2/code_widgets/text/ttext.dart';

class Bodyweight extends StatelessWidget {
  const Bodyweight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
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
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.backgroundGradient),
        child: SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(14),
            children: [
              Bodyweighttrack(),
              SizedBox(height: 10),
              SizedBox(
                child: Padding(
                  padding: EdgeInsets.all(0),
                  child: Specialcnt(
                    child1: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Ttext(note: 'Weight goal:', ccolor: Colors.orange),
                        SizedBox(height: 10),
                        Ttext(note: '120 KG', ccolor: Colors.orange, szz: 16),
                      ],
                    ),
                    child2: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Ttext(
                          note: 'Time left to goal',
                          wgt: FontWeight.bold,
                          ccolor: Colors.white70,
                        ),
                        SizedBox(height: 10),
                        Ttext(note: '10/4/2026'),
                      ],
                    ),
                    child3: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.edit, size: 28, color: AppColors.primary),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Ttext(note: ' WEEKLY WEIGHT LOG', szz: 15, ccolor: Colors.white),
              SizedBox(height: 10),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  gradient: AppColors.orangeGradient,
                  border: Border.all(color: AppColors.primary),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Ttext(
                        note: 'Add new Weight',
                        szz: 17,
                        ccolor: Colors.white70,
                      ),
                      Container(
                        height: 35,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 119, 117, 117),
                        ),
                      ),
                      Icon(Icons.add, color: AppColors.primary, size: 35),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),
              Icontileforbody(
                icon: Icons.edit,
                color: Colors.orange,
                gradiennt: AppColors.orangeGradient,
                txt: Ttext(
                  note: 'Week9',
                  ccolor: Colors.white70,
                  szz: 17,
                  wgt: FontWeight.bold,
                ),
                subtxt: Ttext(note: '130 kg', ccolor: Colors.orange, szz: 18),
              ),
              SizedBox(height: 8),
              Icontileforbody(
                icon: Icons.edit,
                color: Colors.orange,
                gradiennt: AppColors.orangeGradient,
                txt: Ttext(
                  note: 'Week8',
                  ccolor: Colors.white70,
                  szz: 17,
                  wgt: FontWeight.bold,
                ),
                subtxt: Ttext(note: '120 kg', ccolor: Colors.orange, szz: 18),
              ),
              SizedBox(height: 8),
              Icontileforbody(
                icon: Icons.edit,
                color: Colors.orange,
                gradiennt: AppColors.orangeGradient,
                txt: Ttext(
                  note: 'Week7',
                  ccolor: Colors.white70,
                  szz: 17,
                  wgt: FontWeight.bold,
                ),
                subtxt: Ttext(note: '110 kg', ccolor: Colors.orange, szz: 18),
              ),
              SizedBox(height: 8),
              Icontileforbody(
                icon: Icons.edit,
                color: Colors.orange,
                gradiennt: AppColors.orangeGradient,
                txt: Ttext(
                  note: 'Week6',
                  ccolor: Colors.white70,
                  szz: 17,
                  wgt: FontWeight.bold,
                ),
                subtxt: Ttext(note: '100 kg', ccolor: Colors.orange, szz: 18),
              ),
              SizedBox(height: 8),
              Icontileforbody(
                icon: Icons.edit,
                color: Colors.orange,
                gradiennt: AppColors.orangeGradient,
                txt: Ttext(
                  note: 'Week5',
                  ccolor: Colors.white70,
                  szz: 17,
                  wgt: FontWeight.bold,
                ),
                subtxt: Ttext(note: '90 kg', ccolor: Colors.orange, szz: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
