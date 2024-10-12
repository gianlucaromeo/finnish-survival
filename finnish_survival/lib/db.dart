import 'package:finnish_survival/models.dart';

class Database {
  final List<Topic> topics;
  final UserData userData;

  Database({
    required this.topics,
    required this.userData,
  });

  Map<String, dynamic> toJson() => {
    'topics': topics,
    'userData': userData,
  };

  factory Database.fromJson(Map<String, dynamic> json) {
    return Database(
      topics: json['topics'],
      userData: json['userData'],
    );
  }
}

final db = Database(
  topics: [
    Topic(
      id: 'greetings',
      name: 'Greetings',
      isComplete: false,
      isFavorite: true,
      words: [
        EnglishWord(
          id: 'hello',
          word: 'Hello',
          finnishTranslations: [
            FinnishWord(id: 'moi', word: 'Moi'),
          ],
        ),
        EnglishWord(
          id: 'goodbye',
          word: 'Goodbye',
          finnishTranslations: [
            FinnishWord(id: 'moikka', word: 'Moikka'),
          ],
        ),
        EnglishWord(
          id: 'thank_you',
          word: 'Thank you',
          finnishTranslations: [
            FinnishWord(id: 'kiitos', word: 'Kiitos'),
          ],
        ),
        EnglishWord(
          id: 'youre_welcome',
          word: 'You\'re welcome',
          finnishTranslations: [
            FinnishWord(id: 'ole_hyvä', word: 'Ole hyvä'),
          ],
        ),
        EnglishWord(
          id: 'excuse_me',
          word: 'Excuse me',
          finnishTranslations: [
            FinnishWord(id: 'anteeksi', word: 'Anteeksi'),
          ],
        ),
        EnglishWord(
          id: 'im_sorry',
          word: 'I\'m sorry',
          finnishTranslations: [
            FinnishWord(id: 'olen_pahoillani', word: 'Olen pahoillani'),
            FinnishWord(id: 'anteeksi', word: 'Anteeksi'),
          ],
        ),
      ],
    ),
    Topic(
      id: 'family',
      name: 'Family',
      isComplete: false,
      isFavorite: false,
      words: [
        EnglishWord(
          id: 'mother',
          word: 'Mother',
          finnishTranslations: [
            FinnishWord(id: 'äiti', word: 'Äiti'),
            FinnishWord(id: 'mutsi', word: 'Mutsi'),
            FinnishWord(id: 'äiskä', word: 'Äiskä'),
          ],
        ),
        EnglishWord(
          id: 'father',
          word: 'Father',
          finnishTranslations: [
            FinnishWord(id: 'isä', word: 'Isä'),
            FinnishWord(id: 'iskä', word: 'Iskä'),
            FinnishWord(id: 'isi', word: 'Isi'),
          ],
        ),
        EnglishWord(
          id: 'brother',
          word: 'Brother',
          finnishTranslations: [
            FinnishWord(id: 'veli', word: 'Veli'),
            FinnishWord(id: 'velipoika', word: 'Velipoika'),
            FinnishWord(id: 'veljenpoika', word: 'Veljenpoika'),
          ],
        ),
      ],
    ),
  ],
  userData: UserData(
    topicsCompletedIds: [],
    topicsFavoritesIds: ['greetings', 'family'],
    englishWordsFavoritesIds: ['hello', 'mother'],
  ),
);
