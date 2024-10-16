class Exercise {
  final String id;
  final String category;
  final String question;
  final List<String> options;
  final String answer;

  Exercise({
    required this.id,
    required this.category,
    required this.question,
    required this.options,
    required this.answer,
  });

  factory Exercise.fromJson(Map<String, dynamic> json) {
    return Exercise(
      id: json['id'],
      category: json['category'],
      question: json['question'],
      options: List<String>.from(json['options']),
      answer: json['answer'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'category': category,
      'question': question,
      'options': options,
      'answer': answer,
    };
  }

  Exercise copyWith({
    String? id,
    String? category,
    String? question,
    List<String>? options,
    String? answer,
  }) {
    return Exercise(
      id: id ?? this.id,
      category: category ?? this.category,
      question: question ?? this.question,
      options: options ?? this.options,
      answer: answer ?? this.answer,
    );
  }
}