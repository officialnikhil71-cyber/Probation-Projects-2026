import 'package:flutter/material.dart';
import 'package:task_2/code_contrast/appcolor.dart';
import 'package:task_2/code_structure/progressbar.dart';
import 'package:task_2/code_structure/ttextfield.dart';
import 'package:task_2/code_widgets/buttons.dart/button1.dart';
import 'package:task_2/code_widgets/container/container3.dart';
import 'package:task_2/code_widgets/floatingnavigationbar/floatingnavigationbar.dart';
import 'package:task_2/code_widgets/text/ttext.dart';
import 'package:task_2/pagesOFapplication/dumblerelated/mainaction.dart';

class Workoutpage extends StatelessWidget {
  const Workoutpage({super.key});

  @override
  Widget build(BuildContext context) {
    const EdgeInsets defaultPadding = EdgeInsets.symmetric(horizontal: 20);

    return Scaffold(
      backgroundColor: const Color.fromARGB(169, 39, 37, 37),
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        title: Ttext(note: 'Goals', szz: 22, wgt: FontWeight.bold),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.backgroundGradient),
        child: SafeArea(
          child: ListView(
            children: [
              SizedBox(height: 10),
              Padding(padding: defaultPadding, child: Progressbar()),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 34,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 245, 126, 47),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Text(
                          'Plans',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Container(
                        height: 34,
                        alignment: Alignment.center,
                        child: const Text(
                          'Exercises',
                          style: TextStyle(color: Colors.white54, fontSize: 17),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16),
              Padding(
                padding: defaultPadding,
                child: SizedBox(
                  height: 50,
                  child: Button1(
                    note: 'Create new Plan',
                    page: Mainaction(),
                    child: const Icon(Icons.add, size: 34, color: Colors.white),
                  ),
                ),
              ),

              SizedBox(height: 30),
              Padding(
                padding: defaultPadding,
                child: Ttextfield(
                  hinttext: 'search Plans or Exercise',
                  icon: Icons.search,
                  radi: 20,
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: defaultPadding,
                child: Container3FromJson(
                  workoutId: 1,
                  trailingAction: Icon(Icons.edit, color: AppColors.primary),
                  progress: .6,
                ),
              ),
              SizedBox(height: 6),
              Padding(
                padding: defaultPadding,
                child: Container3FromJson(
                  workoutId: 1,
                  trailingAction: Icon(Icons.edit, color: AppColors.primary),
                  progress: .5,
                ),
              ),
              SizedBox(height: 6),
              Padding(
                padding: defaultPadding,
                child: Container3FromJson(
                  workoutId: 1,
                  trailingAction: Icon(Icons.edit, color: Colors.orangeAccent),
                  progress: .85,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const Floatingnavigationbar(),
    );
  }
}
