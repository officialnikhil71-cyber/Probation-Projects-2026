import 'package:flutter/material.dart';
import 'package:task_2/code_widgets/container/ccontainer.dart';
import 'package:task_2/code_widgets/text/ttext.dart';

class GridvieW extends StatelessWidget {
  final String txt;
  const GridvieW({super.key, required this.txt});

  Widget _buildCounterCard({
    required String label,
    required String value,
    VoidCallback? onIncrement,
    VoidCallback? onDecrement,
  }) {
    return Expanded(
      child: SizedBox(
        height: 86,
        child: Ccontainer(
          cOlOr: const Color.fromARGB(255, 171, 163, 163).withOpacity(0.2),
          ccolor: const Color.fromARGB(255, 46, 42, 42),
          cchild: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Ttext(note: label, ccolor: Colors.white60, szz: 13),
                    const SizedBox(height: 4),
                    Ttext(
                      note: value,
                      wgt: FontWeight.bold,
                      szz: 18,
                      ccolor: Colors.white,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: onIncrement ?? () {},
                      child: const Icon(
                        Icons.arrow_drop_up_sharp,
                        color: Colors.white70,
                        size: 26,
                      ),
                    ),
                    InkWell(
                      onTap: onDecrement ?? () {},
                      child: const Icon(
                        Icons.arrow_drop_down_sharp,
                        color: Colors.white70,
                        size: 26,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 14),
        Row(
          children: [
            _buildCounterCard(label: 'Reps:', value: '7 reps'),
            const SizedBox(width: 14),
            _buildCounterCard(label: 'Sets:', value: '10 sets'),
          ],
        ),
        const SizedBox(height: 14),
        Row(
          children: [
            _buildCounterCard(label: 'Weight:', value: '150 lbs'),
            const SizedBox(width: 14),
            _buildCounterCard(label: 'Rest timer:', value: '80s'),
          ],
        ),
        const SizedBox(height: 30),
        SizedBox(
          width: double.infinity,
          height: 52,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 0,
            ),
            child: Text(
              txt,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
