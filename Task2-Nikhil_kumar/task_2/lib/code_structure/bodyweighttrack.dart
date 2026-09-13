import 'package:flutter/material.dart';
import 'package:task_2/code_widgets/container/ccontainer.dart';
import 'package:task_2/code_widgets/text/ttext.dart';

class Bodyweighttrack extends StatelessWidget {
  const Bodyweighttrack({super.key});

  Widget _buildBar(double barHeight, String weekText) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 16,
          height: barHeight,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          weekText,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Ccontainer(
        cchild: Padding(
          padding: const EdgeInsets.all(16.0), // Spacing bada di
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Ccontainer(
                    cOlOr: Colors.orange,
                    cchild: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      child: Ttext(
                        note: '2026🔻',
                        ccolor: Colors.orange,
                        szz: 14,
                        wgt: FontWeight.w600,
                      ),
                    ),
                  ),
                  Ccontainer(
                    cOlOr: Colors.orange,
                    cchild: Padding(
                      padding: const EdgeInsetsGeometry.all(8),
                      child: const Icon(
                        Icons.bar_chart,
                        color: Colors.orange,
                        size: 22,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 220,
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Ttext(note: '250', ccolor: Colors.white, szz: 13),
                        Ttext(note: '200', ccolor: Colors.white, szz: 13),
                        Ttext(note: '150', ccolor: Colors.white, szz: 13),
                        Ttext(note: '110', ccolor: Colors.white, szz: 13),
                        Ttext(note: '50', ccolor: Colors.white, szz: 13),
                      ],
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            top: 85,
                            left: 22,
                            right: 15,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 1.8,
                                    color: Colors.greenAccent,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              _buildBar(170, 'W1'),
                              _buildBar(145, 'W2'),
                              _buildBar(110, 'W3'),
                              _buildBar(130, 'W4'),
                              _buildBar(120, 'W5'),
                              _buildBar(95, 'W6'),
                              _buildBar(115, 'W7'),
                            ],
                          ),
                        ],
                      ),
                    ),
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
