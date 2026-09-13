import 'package:flutter/material.dart';
import 'package:task_2/code_contrast/appcolor.dart';
import 'package:task_2/pagesOFapplication/add/addition.dart';
import 'package:task_2/pagesOFapplication/homepage.dart';
import 'package:task_2/pagesOFapplication/calenderpage.dart';
import 'package:task_2/pagesOFapplication/profilepage.dart';
import 'package:task_2/pagesOFapplication/workoutpage.dart';

int globalNavIndex = 0;

class Floatingnavigationbar extends StatefulWidget {
  const Floatingnavigationbar({super.key});

  @override
  State<Floatingnavigationbar> createState() => _Floatingnavigationbarstate();
}

class _Floatingnavigationbarstate extends State<Floatingnavigationbar> {
  void _navToScreen(BuildContext context, int index, Widget screen) {
    if (globalNavIndex == index) return;

    setState(() {
      globalNavIndex = index;
    });

    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) => screen,
        transitionDuration: Duration.zero,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
        child: Container(
          height: 70,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 39, 36, 36),
            borderRadius: BorderRadius.circular(40),
            boxShadow: const [
              BoxShadow(
                color: Color(0x78000000),
                blurRadius: 18,
                offset: Offset(0, 10),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(Icons.home_filled, size: 30),
                color: globalNavIndex == 0 ? AppColors.primary : Colors.grey,
                onPressed: () {
                  _navToScreen(context, 0, Homepage());
                },
              ),
              IconButton(
                icon: const Icon(Icons.fitness_center_outlined, size: 30),
                color: globalNavIndex == 1 ? AppColors.primary : Colors.grey,
                onPressed: () {
                  _navToScreen(context, 1, Workoutpage());
                },
              ),
              IconButton(
                icon: const Icon(Icons.add_circle, size: 30),
                color: globalNavIndex == 2 ? AppColors.primary : Colors.grey,
                onPressed: () {
                  _navToScreen(context, 2, Addition());
                },
              ),
              IconButton(
                icon: const Icon(Icons.calendar_month_rounded, size: 30),
                color: globalNavIndex == 3 ? AppColors.primary : Colors.grey,
                onPressed: () {
                  _navToScreen(context, 3, Calenderpage());
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.supervised_user_circle_outlined,
                  size: 30,
                ),
                color: globalNavIndex == 4 ? AppColors.primary : Colors.grey,
                onPressed: () {
                  _navToScreen(context, 4, Profilepage());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
