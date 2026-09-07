import 'package:flutter/material.dart';
import 'package:task_2/pagesOFapplication/add/addition.dart';
import 'package:task_2/pagesOFapplication/homepage.dart';
import 'package:task_2/pagesOFapplication/calenderpage.dart';
import 'package:task_2/pagesOFapplication/profilepage.dart';
import 'package:task_2/pagesOFapplication/workoutpage.dart';

class Floatingnavigationbar extends StatefulWidget {
  const Floatingnavigationbar({super.key});

  @override
  State<Floatingnavigationbar> createState() => _Floatingnavigationbarstate();
}

class _Floatingnavigationbarstate extends State<Floatingnavigationbar> {
  int _selectedindex = 0;
  void _navToScreen(BuildContext context, int index, Widget screen) {
    setState(() {
      _selectedindex = index;
    });
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 15),
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
                offset: Offset(0, 66),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(Icons.home_work_outlined, size: 30),
                color: _selectedindex == 0
                    ? const Color.fromARGB(255, 255, 48, 48)
                    : Colors.grey,
                onPressed: () {
                  _navToScreen(context, 0, Homepage());
                },
              ),
              IconButton(
                icon: const Icon(Icons.fitness_center_outlined, size: 30),
                color: _selectedindex == 1
                    ? const Color.fromARGB(255, 255, 48, 44)
                    : Colors.grey,
                onPressed: () {
                  _navToScreen(context, 1, Workoutpage());
                },
              ),
              IconButton(
                icon: const Icon(Icons.create_new_folder_outlined, size: 30),
                color: _selectedindex == 2
                    ? const Color.fromARGB(255, 255, 61, 58)
                    : Colors.grey,
                onPressed: () {
                  _navToScreen(context, 2, Addition());
                },
              ),
              IconButton(
                icon: const Icon(Icons.calendar_month_outlined, size: 30),
                color: _selectedindex == 3
                    ? const Color.fromARGB(255, 248, 62, 55)
                    : Colors.grey,
                onPressed: () {
                  _navToScreen(context, 3, Calenderpage());
                },
              ),
              IconButton(
                icon: const Icon(Icons.person_pin_outlined, size: 30),
                color: _selectedindex == 4
                    ? const Color.fromARGB(255, 255, 34, 34)
                    : Colors.grey,
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
