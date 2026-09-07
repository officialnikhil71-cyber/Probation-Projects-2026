import 'dart:async';
import 'package:flutter/material.dart';

class WorkoutTimer extends StatefulWidget {
  const WorkoutTimer({super.key});

  @override
  State<WorkoutTimer> createState() => _WorkoutTimerState();
}

class _WorkoutTimerState extends State<WorkoutTimer> {
  Timer? _timer;
  int _seconds = 0;
  bool _isRunning = false;
  static const int _total = 30 * 60;

  void _toggleTimer() {
    _isRunning
        ? _timer?.cancel()
        : _timer = Timer.periodic(const Duration(seconds: 1), (_) {
            if (_seconds < _total)
              setState(() => _seconds++);
            else
              _toggleTimer();
          });
    setState(() => _isRunning = !_isRunning);
  }

  void _seek(int delta) =>
      setState(() => _seconds = (_seconds + delta).clamp(0, _total));

  String _format(int s) =>
      '${(s ~/ 60).toString().padLeft(2, '0')}:${(s % 60).toString().padLeft(2, '0')}';

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 46, 42, 42),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: const Color.fromARGB(255, 171, 163, 163).withOpacity(0.2),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: _seconds / _total,
              minHeight: 6,
              backgroundColor: Colors.white12,
              valueColor: const AlwaysStoppedAnimation(Colors.orange),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                _format(_seconds),
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                _format(_total),
                style: const TextStyle(
                  color: Colors.white54,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () => _seek(-5),
                icon: const Icon(
                  Icons.replay_5_rounded,
                  color: Colors.white70,
                  size: 30,
                ),
              ),
              const SizedBox(width: 16),
              GestureDetector(
                onTap: _toggleTimer,
                child: Container(
                  width: 56,
                  height: 56,
                  decoration: const BoxDecoration(
                    color: Color(0xFF15161A),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    _isRunning ? Icons.pause_rounded : Icons.play_arrow_rounded,
                    size: 34,
                    color: Colors.orange,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              IconButton(
                onPressed: () => _seek(5),
                icon: const Icon(
                  Icons.forward_5_rounded,
                  color: Colors.white70,
                  size: 30,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
