import 'package:flutter/material.dart';
import 'package:task_2/childpages.dart/calorieshelper.dart';
import 'package:task_2/code_contrast/appcolor.dart';
import 'package:task_2/code_widgets/container/specialcnt.dart';
import 'package:task_2/code_widgets/text/ttext.dart';

class Calories extends StatelessWidget {
  const Calories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        title: Ttext(note: 'Calories', szz: 22, wgt: FontWeight.bold),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.backgroundGradient),
        child: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(14),
            children: [
              SizedBox(height: 30),
              Calorieshelper(
                heigt: 160,
                width: 160,
                heigtstack: 150,
                widthstack: 150,
                strokewitdth: 17,
                icoN: false,
              ),
              SizedBox(height: 30),
              Center(
                child: Ttext(
                  note: '🔥 Total Calories burned',
                  szz: 20,
                  wgt: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Ttext(
                  note: 'Those number are based on distance and weight',
                  szz: 13,
                ),
              ),
              SizedBox(height: 30),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  gradient: AppColors.orangeGradient,
                  border: Border.all(color: AppColors.primary),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Ttext(
                        note: 'Add Calories',
                        szz: 17,
                        ccolor: Colors.white70,
                      ),
                      Container(
                        height: 35,
                        width: 120,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 119, 117, 117),
                        ),
                      ),
                      Icon(Icons.add, color: AppColors.primary, size: 35),
                    ],
                  ),
                ),
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
                        heigt: 70,
                        width: 70,
                        widthstack: 80,
                        heigtstack: 80,
                        strokewitdth: 11,
                        icoN: false,
                        calories: '150',
                        progres: 1.0,
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
                        heigt: 70,
                        width: 70,
                        widthstack: 80,
                        heigtstack: 80,
                        strokewitdth: 11,
                        icoN: false,
                        calories: '85',
                        progres: .3,
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
                        heigt: 70,
                        width: 70,
                        widthstack: 80,
                        heigtstack: 80,
                        strokewitdth: 11,
                        icoN: false,
                        calories: '165',
                        progres: .4,
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
      ),
    );
  }
}
