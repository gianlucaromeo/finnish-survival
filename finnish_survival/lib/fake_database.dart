import 'package:finnish_survival/finnish_survival.dart';

final fakeDatabase = Database(
  topics: [
    Topic(
      id: 'greetings',
      name: 'Greetings',
      isComplete: false,
      isFavorite: false,
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
    Topic(
      id: 'verb_to_be',
      name: 'Verb "to be"',
      isComplete: false,
      isFavorite: false,
      words: [
        EnglishWord(
          id: 'i_am',
          word: 'I am',
          finnishTranslations: [
            FinnishWord(id: 'minä_olen', word: 'Minä olen'),
          ],
        ),
        EnglishWord(
          id: 'you_are',
          word: 'You are',
          finnishTranslations: [
            FinnishWord(id: 'sinä_olet', word: 'Sinä olet'),
          ],
        ),
        EnglishWord(
          id: 'he_is',
          word: 'He is',
          finnishTranslations: [
            FinnishWord(id: 'hän_on', word: 'Hän on'),
          ],
        ),
        EnglishWord(
          id: 'she_is',
          word: 'She is',
          finnishTranslations: [
            FinnishWord(id: 'hän_on', word: 'Hän on'),
          ],
        ),
        EnglishWord(
          id: 'it_is',
          word: 'It is',
          finnishTranslations: [
            FinnishWord(id: 'se_on', word: 'Se on'),
          ],
        ),
        EnglishWord(
          id: 'we_are',
          word: 'We are',
          finnishTranslations: [
            FinnishWord(id: 'me_olemme', word: 'Me olemme'),
          ],
        ),
        EnglishWord(
          id: 'you_are_plural',
          word: 'You are',
          finnishTranslations: [
            FinnishWord(id: 'te_olette', word: 'Te olette'),
          ],
        ),
        EnglishWord(
          id: 'they_are',
          word: 'They are',
          finnishTranslations: [
            FinnishWord(id: 'he_ovat', word: 'He ovat'),
          ],
        ),
      ],
    ),
  ],
  topicExercises: [
    TopicExercise(
      id: 'greetings',
      name: "Greetings",
      isComplete: false,
      isFavorite: false,
      exercises: [
        Exercise(
          id: 'greetings_1',
          category: 'Greetings',
          question: 'What is the Finnish translation for "Hello"?',
          options: ['Moi', 'Kiitos', 'Ei'],
          answer: 'Moi',
        ),
        Exercise(
          id: 'greetings_2',
          category: 'Greetings',
          question: 'What is the Finnish translation for "Goodbye"?',
          options: ['Kiitos', 'Moi moi', 'Ei'],
          answer: 'Moi moi',
        ),
        Exercise(
          id: 'greetings_3',
          category: 'Greetings',
          question: 'What is the Finnish translation for "Thank you"?',
          options: ['Kiitos', 'Moi', 'Ei'],
          answer: 'Kiitos',
        ),
      ],
    ),
    TopicExercise(
      id: 'family',
      name: "Family",
      isComplete: false,
      isFavorite: false,
      exercises: [
        Exercise(
          id: 'family_1',
          category: 'Family',
          question: 'What is the Finnish translation for "Mother"?',
          options: ['Äiti', 'Isä', 'Veli'],
          answer: 'Äiti',
        ),
        Exercise(
          id: 'family_2',
          category: 'Family',
          question: 'What is the Finnish translation for "Father"?',
          options: ['Äiti', 'Isä', 'Veli'],
          answer: 'Isä',
        ),
        Exercise(
          id: 'family_3',
          category: 'Family',
          question: 'What is the Finnish translation for "Brother"?',
          options: ['Äiti', 'Isä', 'Veli'],
          answer: 'Veli',
        ),
      ],
    ),
    TopicExercise(
      id: 'verb_to_be',
      name: "Verb 'to be'",
      isComplete: false,
      isFavorite: false,
      exercises: [
        Exercise(
          id: 'verb_to_be_1',
          category: 'Verb "to be"',
          question: 'What is the Finnish translation for "I am"?',
          options: ['Minä olen', 'Sinä olet', 'Hän on'],
          answer: 'Minä olen',
        ),
        Exercise(
          id: 'verb_to_be_2',
          category: 'Verb "to be"',
          question: 'What is the Finnish translation for "You are"?',
          options: ['Minä olen', 'Sinä olet', 'Hän on'],
          answer: 'Sinä olet',
        ),
        Exercise(
          id: 'verb_to_be_3',
          category: 'Verb "to be"',
          question: 'What is the Finnish translation for "He is"?',
          options: ['Minä olen', 'Sinä olet', 'Hän on'],
          answer: 'Hän on',
        ),
      ],
    ),
  ],
);
