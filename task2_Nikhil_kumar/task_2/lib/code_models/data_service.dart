import 'dart:convert';
import 'package:flutter/services.dart';
import '../code_models/data_model.dart';

const String _workoutAssetPath = 'assets/morethings/workout.json';

Future<List<Workout>> loadWorkouts() {
  return _loadWorkouts();
}

Future<List<Workout>> _loadWorkouts() async {
  final data = await rootBundle.loadString(_workoutAssetPath, cache: false);
  final jsonData = jsonDecode(data);

  return (jsonData as List)
      .map((item) => Workout.fromJson(item as Map<String, dynamic>))
      .toList();
}

Future<Workout> loadWorkoutById(int id) async {
  final workouts = await loadWorkouts();

  return workouts.firstWhere(
    (workout) => workout.id == id,
    orElse: () => throw StateError('Workout with id $id was not found.'),
  );
}
