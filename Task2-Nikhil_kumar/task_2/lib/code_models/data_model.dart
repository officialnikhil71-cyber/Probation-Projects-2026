class Workout {
  final int id;
  final String title;
  final Map<String, String> metrics;

  Workout({
    required this.id,
    required this.title,
    required this.metrics,
  });

  factory Workout.fromJson(Map<String, dynamic> json) {
    return Workout(
      id: json['id'] is int
          ? json['id'] as int
          : int.parse(json['id'].toString()),
      title: json['title'].toString(),
      metrics: {
        for (final entry in json.entries)
          if (entry.key != 'id' && entry.key != 'title')
            entry.key: entry.value.toString(),
      },
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      ...metrics,
    };
  }
}
