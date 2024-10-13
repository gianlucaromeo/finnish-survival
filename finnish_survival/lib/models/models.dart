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

  FinnishWord copyWith({
    String? id,
    String? word,
    bool? isFavorite,
  }) {
    return FinnishWord(
      id: id ?? this.id,
      word: word ?? this.word,
      isFavorite: isFavorite ?? this.isFavorite,
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

  EnglishWord copyWith({
    String? id,
    String? word,
    List<FinnishWord>? finnishTranslations,
  }) {
    return EnglishWord(
      id: id ?? this.id,
      word: word ?? this.word,
      finnishTranslations: finnishTranslations ?? this.finnishTranslations,
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

  UserData copyWith({
    List<String>? topicsCompletedIds,
    List<String>? topicsFavoritesIds,
    List<String>? englishWordsFavoritesIds,
  }) {
    return UserData(
      topicsCompletedIds: topicsCompletedIds ?? this.topicsCompletedIds,
      topicsFavoritesIds: topicsFavoritesIds ?? this.topicsFavoritesIds,
      englishWordsFavoritesIds: englishWordsFavoritesIds ?? this.englishWordsFavoritesIds,
    );
  }
}