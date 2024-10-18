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
    Topic(
      id: 'time_and_weekdays',
      name: 'Time and Weekdays',
      isComplete: false,
      isFavorite: false,
      words: [
        EnglishWord(
          id: 'weekdays',
          word: 'Weekdays',
          finnishTranslations: [
            FinnishWord(id: 'viikonpaivat', word: 'Viikonpäivät'),
          ],
        ),
        EnglishWord(
          id: 'weekend',
          word: 'Weekend',
          finnishTranslations: [
            FinnishWord(id: 'viikonloppu', word: 'Viikonloppu'),
          ],
        ),
        EnglishWord(
          id: 'monday',
          word: 'Monday',
          finnishTranslations: [
            FinnishWord(id: 'maanantai', word: 'Maanantai'),
          ],
        ),
        EnglishWord(
          id: 'tuesday',
          word: 'Tuesday',
          finnishTranslations: [
            FinnishWord(id: 'tiistai', word: 'Tiistai'),
          ],
        ),
        EnglishWord(
          id: 'wednesday',
          word: 'Wednesday',
          finnishTranslations: [
            FinnishWord(id: 'keskiviikko', word: 'Keskiviikko'),
          ],
        ),
        EnglishWord(
          id: 'thursday',
          word: 'Thursday',
          finnishTranslations: [
            FinnishWord(id: 'torstai', word: 'Torstai'),
          ],
        ),
        EnglishWord(
          id: 'friday',
          word: 'Friday',
          finnishTranslations: [
            FinnishWord(id: 'perjantai', word: 'Perjantai'),
          ],
        ),
        EnglishWord(
          id: 'saturday',
          word: 'Saturday',
          finnishTranslations: [
            FinnishWord(id: 'lauantai', word: 'Lauantai'),
          ],
        ),
        EnglishWord(
          id: 'sunday',
          word: 'Sunday',
          finnishTranslations: [
            FinnishWord(id: 'sunnuntai', word: 'Sunnuntai'),
          ],
        ),
        EnglishWord(
          id: 'morning',
          word: 'Morning',
          finnishTranslations: [
            FinnishWord(id: 'aamu', word: 'Aamu'),
          ],
        ),
        EnglishWord(
          id: 'day',
          word: 'Day',
          finnishTranslations: [
            FinnishWord(id: 'paiva', word: 'Päivä'),
          ],
        ),
        EnglishWord(
          id: 'evening',
          word: 'Evening',
          finnishTranslations: [
            FinnishWord(id: 'ilta', word: 'Ilta'),
          ],
        ),
        EnglishWord(
          id: 'night',
          word: 'Night',
          finnishTranslations: [
            FinnishWord(id: 'yo', word: 'Yö'),
          ],
        ),
        EnglishWord(
          id: 'exactly',
          word: 'Exactly',
          finnishTranslations: [
            FinnishWord(id: 'tasan', word: 'Tasan'),
          ],
        ),
        EnglishWord(
          id: 'over',
          word: 'Over',
          finnishTranslations: [
            FinnishWord(id: 'yli', word: 'Yli'),
          ],
        ),
        EnglishWord(
          id: 'half',
          word: 'Half',
          finnishTranslations: [
            FinnishWord(id: 'puoli', word: 'Puoli'),
          ],
        ),
        EnglishWord(
          id: 'until',
          word: 'Until',
          finnishTranslations: [
            FinnishWord(id: 'vaille', word: 'Vaille'),
          ],
        ),
        EnglishWord(
          id: 'ten_oclock',
          word: '10:00',
          finnishTranslations: [
            FinnishWord(id: 'tasan_kymmenen', word: 'Tasan kymmenen'),
          ],
        ),
        EnglishWord(
          id: 'eight_twenty',
          word: '08:20',
          finnishTranslations: [
            FinnishWord(id: 'kaksikymmentä_yli_kahdeksan', word: 'Kaksikymmentä yli kahdeksan'),
          ],
        ),
        EnglishWord(
          id: 'two_thirty',
          word: '02:30',
          finnishTranslations: [
            FinnishWord(id: 'puoli_kolme', word: 'Puoli kolme'),
          ],
        ),
        EnglishWord(
          id: 'four_fortyfive',
          word: '04:45',
          finnishTranslations: [
            FinnishWord(id: 'viisitoista_vaille_viisi', word: 'Viisitoista vaille viisi'),
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
    TopicExercise(
      id: 'time_and_weekdays',
      name: 'Time and Weekdays',
      isComplete: false,
      isFavorite: false,
      exercises: [
        Exercise(
          id: 'time_and_weekdays_1',
          category: 'Time and Weekdays',
          question: 'What is the Finnish translation for "Monday"?',
          options: ['Maanantai', 'Tiistai', 'Perjantai'],
          answer: 'Maanantai',
        ),
        Exercise(
          id: 'time_and_weekdays_2',
          category: 'Time and Weekdays',
          question: 'What is the Finnish translation for "Morning"?',
          options: ['Aamu', 'Ilta', 'Yö'],
          answer: 'Aamu',
        ),
        Exercise(
          id: 'time_and_weekdays_3',
          category: 'Time and Weekdays',
          question: 'What is the Finnish translation for "10:00"?',
          options: ['Tasan kymmenen', 'Kaksikymmentä yli kahdeksan', 'Viisitoista vaille viisi'],
          answer: 'Tasan kymmenen',
        ),
        Exercise(
          id: 'time_and_weekdays_4',
          category: 'Time and Weekdays',
          question: 'What is the Finnish translation for "08:20"?',
          options: ['Kaksikymmentä yli kahdeksan', 'Puoli kolme', 'Tasan kymmenen'],
          answer: 'Kaksikymmentä yli kahdeksan',
        ),
        Exercise(
          id: 'time_and_weekdays_5',
          category: 'Time and Weekdays',
          question: 'What is the Finnish translation for "04:45"?',
          options: ['Puoli kolme', 'Viisitoista vaille viisi', 'Tasan kymmenen'],
          answer: 'Viisitoista vaille viisi',
        ),
      ],
    ),
  ],
);
