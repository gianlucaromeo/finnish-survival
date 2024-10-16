import 'package:finnish_survival/modules/common/common.dart';

class Database {
  final List<Topic> topics;
  final List<TopicExercise> topicExercises;

  Database({
    required this.topics,
    required this.topicExercises,
  });

  Map<String, dynamic> toJson() => {
    'topics': topics,
    'topicExercises': topicExercises,
    //'userData': userData,
  };

  factory Database.fromJson(Map<String, dynamic> json) {
    return Database(
      topics: json['topics'],
      topicExercises: json['topicExercises'],
    );
  }

  Database copyWith({
    List<Topic>? topics,
    List<TopicExercise>? topicExercises,
  }) {
    return Database(
      topics: topics ?? this.topics,
      topicExercises: topicExercises ?? this.topicExercises,
    );
  }
}