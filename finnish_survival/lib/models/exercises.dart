import 'package:finnish_survival/finnish_survival.dart';

class Exercises {
  final String id;
  final String name;
  final List<Exercise> exercises;
  final bool isFavorite;
  final bool isComplete;

  Exercises({
    required this.id,
    required this.name,
    required this.exercises,
    required this.isComplete,
    this.isFavorite = false,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'words': exercises,
    'isFavorite': isFavorite,
    'isComplete': isComplete,
  };

  factory Exercises.fromJson(Map<String, dynamic> json) {
    return Exercises(
      id: json['id'],
      name: json['name'],
      exercises: json['words'],
      isFavorite: json['isFavorite'],
      isComplete: json['isComplete'],
    );
  }

  Exercises copyWith({
    String? id,
    String? name,
    List<Exercise>? exercises,
    bool? isFavorite,
    bool? isComplete,
  }) {
    return Exercises(
      id: id ?? this.id,
      name: name ?? this.name,
      exercises: exercises ?? this.exercises,
      isFavorite: isFavorite ?? this.isFavorite,
      isComplete: isComplete ?? this.isComplete,
    );
  }
}