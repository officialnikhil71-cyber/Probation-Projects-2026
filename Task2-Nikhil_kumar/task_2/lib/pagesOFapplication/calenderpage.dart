import 'package:flutter/material.dart';
import 'package:task_2/childpages.dart/calender.dart';
import 'package:task_2/childpages.dart/calpage1.dart';
import 'package:task_2/childpages.dart/history.dart';
import 'package:task_2/code_contrast/appcolor.dart';
import 'package:task_2/code_widgets/buttons.dart/button1.dart';
import 'package:task_2/code_widgets/container/container3.dart';
import 'package:task_2/code_widgets/floatingnavigationbar/floatingnavigationbar.dart';
import 'package:task_2/code_widgets/text/ttext.dart';

class Calenderpage extends StatelessWidget {
  const Calenderpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: const Color.fromARGB(169, 39, 37, 37),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Ttext(
          note: 'CALENDER',
          szz: 22,
          wgt: FontWeight.w600,
          ccolor: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.backgroundGradient),
        child: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(14.0),
            children: [
              CalendarCardWidget(),
              SizedBox(height: 10),
              Ttext(note: 'Plans Today', szz: 16),
              SizedBox(height: 10),
              Container3FromJson(
                workoutId: 1,
                trailingAction: Ttext(note: 'All day today'),
              ),
              SizedBox(height: 10),
              Container3FromJson(
                workoutId: 1,
                trailingAction: Ttext(note: 'All day today'),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: SizedBox(
                  height: 50,
                  child: Button1(
                    note: '+ add a Plan',
                    txtcolor: AppColors.primary,
                    cl: AppColors.primary,
                    colour: Colors.transparent,
                    page: Calpage1(),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => History()),
                    );
                  },
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.refresh_rounded,
                          color: AppColors.primary,
                          size: 32,
                        ),
                        VerticalDivider(width: 7),
                        Ttext(
                          note: 'History',
                          szz: 20,
                          ccolor: AppColors.primary,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Floatingnavigationbar(),
    );
  }
}
