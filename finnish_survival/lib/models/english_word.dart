import 'package:finnish_survival/finnish_survival.dart';

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