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