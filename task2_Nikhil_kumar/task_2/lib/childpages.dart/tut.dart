import 'package:flutter/material.dart';
import 'package:task_2/code_widgets/container/ccontainer.dart';
import 'package:task_2/code_widgets/text/ttext.dart';

class Tut extends StatelessWidget {
  const Tut({super.key});

  Widget _buildExerciseCard({
    required String title,
    required String target,
    required String average,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 46, 42, 42),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: const Color.fromARGB(255, 171, 163, 163).withOpacity(0.2),
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Ttext(
                note: title,
                ccolor: Colors.white,
                szz: 18,
                wgt: FontWeight.bold,
              ),
              const SizedBox(height: 6),
              Ttext(note: 'Target: $target', ccolor: Colors.white60, szz: 13),
              const SizedBox(height: 2),
              Ttext(note: 'Average: $average', ccolor: Colors.white60, szz: 13),
            ],
          ),

          Column(
            children: const [
              Icon(Icons.info_outline, color: Colors.white60, size: 20),
              SizedBox(height: 14),
              Icon(Icons.edit, color: Colors.orange, size: 18),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(169, 39, 37, 37),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Ttext(
          note: 'Time Under Tension (T.U.T)',
          ccolor: Colors.white,
          wgt: FontWeight.bold,
          szz: 20,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.only(top: 10, right: 14, left: 14),
          children: [
            const SizedBox(height: 10),
            const Ttext(
              note: 'Bench Exercise',
              ccolor: Colors.white,
              szz: 17,
              wgt: FontWeight.bold,
            ),
            const SizedBox(height: 5),
            const Ttext(
              note: 'Completed: October 25th, 2023',
              ccolor: Colors.white60,
              szz: 13,
            ),
            const SizedBox(height: 15),
            Ccontainer(
              ccolor: const Color.fromARGB(255, 46, 42, 42),
              cOlOr: const Color.fromARGB(255, 171, 163, 163),
              cchild: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Ttext(
                      note: 'Suggested Time Under Tension',
                      ccolor: Colors.orange,
                      wgt: FontWeight.w600,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Ttext(note: 'Beginner', ccolor: Colors.orange, szz: 16),
                        Ttext(note: '0:0:0:0', ccolor: Colors.orange, szz: 16),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Ttext(
                          note: 'Body building:',
                          ccolor: Colors.white,
                          szz: 15,
                        ),
                        Ttext(note: '0:0:0:0', ccolor: Colors.white, szz: 15),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Ttext(
                          note: 'Explosives:',
                          ccolor: Colors.white,
                          szz: 15,
                        ),
                        Ttext(note: '0:0:0:0', ccolor: Colors.white, szz: 15),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Ttext(
                          note: 'Sustained:',
                          ccolor: Colors.white,
                          szz: 15,
                        ),
                        Ttext(note: '0:0:0:0', ccolor: Colors.white, szz: 15),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Ttext(
                          note: 'Powerlifting:',
                          ccolor: Colors.white,
                          szz: 15,
                        ),
                        Ttext(note: '0:0:0:0', ccolor: Colors.white, szz: 15),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Ttext(
                    note: 'Overall Accuracy:',
                    ccolor: Colors.orange,
                    szz: 17,
                    wgt: FontWeight.bold,
                  ),
                  Ttext(
                    note: '78%',
                    ccolor: Colors.orange,
                    szz: 18,
                    wgt: FontWeight.bold,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            _buildExerciseCard(
              title: 'Bench',
              target: '0:0:0:0',
              average: '0:0:0:0',
            ),
            _buildExerciseCard(
              title: 'Squats',
              target: '0:0:0:0',
              average: '0:0:0:0',
            ),
            _buildExerciseCard(
              title: 'Lat Press',
              target: '0:0:0:0',
              average: '0:0:0:0',
            ),
            _buildExerciseCard(
              title: 'Deadlift',
              target: '0:0:0:0',
              average: '0:0:0:0',
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
