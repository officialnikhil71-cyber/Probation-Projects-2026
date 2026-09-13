import 'package:flutter/material.dart';
import 'package:task_2/code_contrast/appcolor.dart';
import 'package:task_2/code_widgets/container/ccontainer.dart';
import 'package:task_2/code_widgets/container/container3.dart';
import 'package:task_2/code_widgets/floatingnavigationbar/floatingnavigationbar.dart';
import 'package:task_2/code_widgets/text/ttext.dart';
import 'package:task_2/pagesOFapplication/add/summarypage.dart';
import 'package:task_2/pagesOFapplication/add/timer.dart';

class Addition extends StatelessWidget {
  const Addition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Ttext(note: 'Workout', szz: 22, wgt: FontWeight.bold),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.format_line_spacing_rounded,
              color: Colors.white60,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Summarypage()),
              );
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.backgroundGradient),
        child: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 14),
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: AppColors.background2Gradient,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.watch, size: 30, color: Colors.orange),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Ttext(note: 'PushUps'),
                          SizedBox(height: 20),
                          Ttext(note: 'Reps :10', szz: 20),
                          SizedBox(height: 20),
                          Ttext(note: 'completed sets'),
                          Ttext(note: '3/5'),
                          SizedBox(height: 20),
                          OutlinedButton.icon(
                            onPressed: () {},
                            label: Ttext(
                              note: 'weight:150 lbs',
                              szz: 11,
                              ccolor: AppColors.primary,
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.star_border, size: 30, color: Colors.orange),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 110),
                child: Ccontainer(
                  ccolor: Colors.black,
                  cOlOr: Colors.orange,
                  cchild: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 94, 76, 52),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Ttext(note: 'Rest: 80 seconds', ccolor: Colors.orange),
                        Icon(Icons.edit, color: Colors.orange),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),

              Column(
                children: [
                  Row(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.fast_rewind_rounded,
                        color: Colors.white60,
                        size: 40,
                      ),
                      VerticalDivider(width: 8),
                      Icon(Icons.pause, color: Colors.orangeAccent, size: 50),
                      VerticalDivider(width: 8),
                      Icon(
                        Icons.fast_forward_rounded,
                        color: Colors.white60,
                        size: 40,
                      ),
                    ],
                  ),
                ],
              ),
              // WorkoutTimer(),
              SizedBox(height: 10),
              WorkoutTimerBar(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Ttext(note: 'Reps:'),
                        Ttext(note: 'Sets:'),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(),
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  border: Border.all(color: Colors.orange),
                                ),
                                child: Center(
                                  child: Ttext(
                                    note: '-',
                                    ccolor: Colors.orange,
                                    szz: 25,
                                  ),
                                ),
                              ),
                              VerticalDivider(width: 4),
                              Ttext(note: '10'),
                              VerticalDivider(width: 4),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  border: Border.all(color: Colors.orange),
                                ),
                                child: Center(
                                  child: Ttext(
                                    note: '+',
                                    ccolor: Colors.orange,
                                    szz: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(),
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  border: Border.all(color: Colors.orange),
                                ),
                                child: Center(
                                  child: Ttext(
                                    note: '-',
                                    ccolor: Colors.orange,
                                    szz: 25,
                                    wgt: FontWeight.bold,
                                  ),
                                ),
                              ),
                              VerticalDivider(width: 4),
                              Ttext(note: '10'),
                              VerticalDivider(width: 4),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  border: Border.all(color: Colors.orange),
                                ),
                                child: Center(
                                  child: Ttext(
                                    note: '+',
                                    ccolor: Colors.orange,
                                    szz: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container3FromJson(
                workoutId: 1,
                trailingAction: Icon(Icons.fast_forward, color: Colors.orange),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Floatingnavigationbar(),
    );
  }
}
