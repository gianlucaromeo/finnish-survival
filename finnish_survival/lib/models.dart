// A simple fake database structure.

abstract class Word {
  final String id;
  final String word;

  Word({
    required this.id,
    required this.word,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'word': word,
      };
}

class FinnishWord extends Word {
  final bool isFavorite;

  FinnishWord({
    required super.id,
    required super.word,
    this.isFavorite = false,
  });

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'word': word,
        'isFavorite': isFavorite,
      };

  factory FinnishWord.fromJson(Map<String, dynamic> json) {
    return FinnishWord(
      id: json['id'],
      word: json['word'],
      isFavorite: json['isFavorite'],
    );
  }
}

class EnglishWord extends Word {
  final List<FinnishWord> finnishTranslations;

  EnglishWord({
    required super.id,
    required super.word,
    required this.finnishTranslations,
  });

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'word': word,
        'finnishTranslations': finnishTranslations,
      };

  factory EnglishWord.fromJson(Map<String, dynamic> json) {
    return EnglishWord(
      id: json['id'],
      word: json['word'],
      finnishTranslations: json['finnishTranslations'],
    );
  }
}

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
}

class UserData {
  final List<String> topicsCompletedIds;
  final List<String> topicsFavoritesIds;
  final List<String> englishWordsFavoritesIds;

  UserData({
    required this.topicsCompletedIds,
    required this.topicsFavoritesIds,
    required this.englishWordsFavoritesIds,
  });

  Map<String, dynamic> toJson() =>
      {
        'topicsCompletedIds': topicsCompletedIds,
        'topicsFavoritesIds': topicsFavoritesIds,
        'englishWordsFavoritesIds': englishWordsFavoritesIds,
      };

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      topicsCompletedIds: json['topicsCompletedIds'],
      topicsFavoritesIds: json['topicsFavoritesIds'],
      englishWordsFavoritesIds: json['englishWordsFavoritesIds'],
    );
  }
}