import 'package:flutter/material.dart';

class WorkoutTimerBar extends StatelessWidget {
  const WorkoutTimerBar({super.key});

  final double _currentValue = 479; 
  final double _maxValue = 1800; 

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IgnorePointer(
          child: SliderTheme(
            data: SliderThemeData(
              trackHeight: 4.0,
              activeTrackColor: const Color(0xFFFF7527),
              inactiveTrackColor: Colors.grey.shade800,
              thumbColor: const Color(0xFFFF7527),
              overlayColor: Colors.transparent,
              thumbShape: const RoundSliderThumbShape(
                enabledThumbRadius: 6.0,
                elevation: 0.0,
              ),
              trackShape: const RectangularSliderTrackShape(),
            ),
            child: Slider(
              value: _currentValue,
              min: 0.0,
              max: _maxValue,
              onChanged: (value) {},
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("7:59", style: TextStyle(color: Colors.grey, fontSize: 12)),
              Text("30:00", style: TextStyle(color: Colors.grey, fontSize: 12)),
            ],
          ),
        ),
      ],
    );
  }
}
