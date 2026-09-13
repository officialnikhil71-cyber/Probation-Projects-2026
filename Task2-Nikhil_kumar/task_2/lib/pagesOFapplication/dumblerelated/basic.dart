import 'package:flutter/material.dart';
import 'package:task_2/code_contrast/appcolor.dart';
import 'package:task_2/pagesOFapplication/dumblerelated/actionpage.dart';
import 'package:task_2/pagesOFapplication/dumblerelated/actionpage2.dart';
import 'package:task_2/pagesOFapplication/dumblerelated/mainaction.dart';

class Basic extends StatefulWidget {
  final int selectedIndex;
  const Basic({super.key, this.selectedIndex = 0});

  @override
  State<Basic> createState() => _BasicState();
}

class _BasicState extends State<Basic> {
  late int _index;

  @override
  void initState() {
    super.initState();
    _index = widget.selectedIndex;
  }

  final List<String> labels = ['Warm up', 'Main', 'Cool down'];
  final List<IconData> icons = [
    Icons.sync,
    Icons.access_time_filled_outlined,
    Icons.donut_small_rounded,
  ];

  final List<Widget> pages = [
    const Actionpage(),
    const Mainaction(),
    const Actionpage2(),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(3, (index) {
          final isSelected = _index == index;
          return InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: () {
              if (_index == index) return;
              setState(() {
                _index = index;
              });

              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => pages[index]),
              );
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 64,
                  width: 64,
                  decoration: BoxDecoration(
                    gradient: AppColors.orangeGradient,
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: isSelected
                          ? const Color(0xFFFF7A00)
                          : Colors.transparent,
                      width: 2,
                    ),
                    boxShadow: isSelected
                        ? [
                            BoxShadow(
                              color: const Color(0xFFFF7A00).withOpacity(0.5),
                              blurRadius: 14,
                              spreadRadius: 2,
                            ),
                          ]
                        : [],
                  ),
                  child: Icon(
                    icons[index],
                    color: isSelected
                        ? const Color(0xFFFF7A00)
                        : Colors.white70,
                    size: 28,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  labels[index],
                  style: TextStyle(
                    color: isSelected
                        ? const Color(0xFFFF7A00)
                        : Colors.white70,
                    fontSize: 13,
                    fontWeight: isSelected
                        ? FontWeight.w600
                        : FontWeight.normal,
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
