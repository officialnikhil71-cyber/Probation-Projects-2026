import 'package:flutter/material.dart';
import 'package:task_2/code_contrast/appcolor.dart';
import 'package:task_2/code_models/data_model.dart';
import 'package:task_2/code_models/data_service.dart';
import 'package:task_2/code_widgets/text/ttext.dart';

class Container3 extends StatelessWidget {
  final String? date;
  final String title;
  final Widget? trailingAction;
  final List<Map<String, String>> metrics;
  final double? progress;
  final VoidCallback? onTap;

  const Container3({
    super.key,
    this.date,
    required this.title,
    this.trailingAction,
    required this.metrics,
    this.progress,
    this.onTap,
  });

  factory Container3.fromJson(
    Map<String, dynamic> json, {
    Key? key,
    Widget? trailingAction,
    String? date,
    double? progress,
    VoidCallback? onTap,
  }) {
    final metrics = <Map<String, String>>[
      for (final entry in json.entries)
        if (entry.key != 'id' && entry.key != 'title')
          {_displayLabel(entry.key): _displayValue(entry.key, entry.value)},
    ];
    return Container3(
      key: key,
      date: date,
      title: json['title'] ?? 'Workout',
      trailingAction: trailingAction,
      onTap: onTap,
      progress: progress,
      metrics: metrics,
    );
  }

  static String _displayLabel(String key) {
    if (key.isEmpty) return 'Metric';
    return '${key[0].toUpperCase()}${key.substring(1)}';
  }

  static String _displayValue(String key, dynamic value) {
    final text = value.toString();
    return key.toLowerCase() == 'weight' && !text.toLowerCase().contains('lb')
        ? '$text lbs'
        : text;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          gradient: AppColors.orangeGradient,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: const Color.fromARGB(255, 171, 163, 163).withOpacity(0.2),
            width: 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (date != null) ...[
              Ttext(note: date!, ccolor: Colors.white60, szz: 12),
              const SizedBox(height: 4),
            ],
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Ttext(
                  note: title,
                  ccolor: Colors.white,
                  szz: 18,
                  wgt: FontWeight.bold,
                ),
                if (trailingAction != null) trailingAction!,
              ],
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 12,
              runSpacing: 13,
              children: metrics.map((item) {
                final label = item.keys.first;
                final val = item.values.first;
                return SizedBox(
                  width: 65,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Ttext(note: label, ccolor: Colors.white54, szz: 11),
                      const SizedBox(height: 3),
                      Ttext(
                        note: val,
                        ccolor: Colors.white,
                        szz: 13,
                        wgt: FontWeight.w600,
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
            if (progress != null) ...[
              const SizedBox(height: 12),
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: LinearProgressIndicator(
                  value: progress,
                  minHeight: 6,
                  backgroundColor: Colors.white12,
                  valueColor: const AlwaysStoppedAnimation<Color>(
                    Colors.orange,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class Container3FromJson extends StatelessWidget {
  final int workoutId;
  final String? date;
  final Widget? trailingAction;
  final double? progress;
  final VoidCallback? onTap;

  const Container3FromJson({
    super.key,
    required this.workoutId,
    this.date,
    this.trailingAction,
    this.progress,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Workout>(
      future: loadWorkoutById(workoutId),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Container3(
            date: date,
            title: 'Workout',
            trailingAction: trailingAction,
            onTap: onTap,
            progress: progress,
            metrics: const [
              {'Error': 'Workout unavailable'},
            ],
          );
        }
        if (!snapshot.hasData) {
          return const Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: CircularProgressIndicator(color: Colors.orange),
            ),
          );
        }
        return Container3.fromJson(
          snapshot.data!.toJson(),
          date: date,
          trailingAction: trailingAction,
          progress: progress,
          onTap: onTap,
        );
      },
    );
  }
}
