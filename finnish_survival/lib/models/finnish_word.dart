import 'package:finnish_survival/finnish_survival.dart';

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