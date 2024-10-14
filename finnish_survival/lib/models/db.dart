import 'package:finnish_survival/finnish_survival.dart';
import 'package:finnish_survival/models/exercises.dart';

class Database {
  final List<Topic> topics;
  final List<Exercises> exercises;

  Database({
    required this.topics,
    required this.exercises,
  });

  Map<String, dynamic> toJson() => {
    'topics': topics,
    //'userData': userData,
  };

  factory Database.fromJson(Map<String, dynamic> json) {
    return Database(
      topics: json['topics'],
      exercises: json['exercises'],
    );
  }

  Database copyWith({
    List<Topic>? topics,
    List<Exercises>? exercises,
  }) {
    return Database(
      topics: topics ?? this.topics,
      exercises: exercises ?? this.exercises,
    );
  }
}