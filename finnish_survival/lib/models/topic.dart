import 'package:finnish_survival/models/english_word.dart';

class Topic {
  final String id;
  final String name;
  final List<EnglishWord> words;
  final bool isFavorite;
  final bool isComplete;

  Topic({
    required this.id,
    required this.name,
    required this.words,
    required this.isComplete,
    this.isFavorite = false,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'words': words,
    'isFavorite': isFavorite,
    'isComplete': isComplete,
  };

  factory Topic.fromJson(Map<String, dynamic> json) {
    return Topic(
      id: json['id'],
      name: json['name'],
      words: json['words'],
      isFavorite: json['isFavorite'],
      isComplete: json['isComplete'],
    );
  }

  Topic copyWith({
    String? id,
    String? name,
    List<EnglishWord>? words,
    bool? isFavorite,
    bool? isComplete,
  }) {
    return Topic(
      id: id ?? this.id,
      name: name ?? this.name,
      words: words ?? this.words,
      isFavorite: isFavorite ?? this.isFavorite,
      isComplete: isComplete ?? this.isComplete,
    );
  }
}