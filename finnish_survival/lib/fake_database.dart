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
    Topic(
      id: 'polite_phrases',
      name: 'Polite Phrases',
      isComplete: false,
      isFavorite: false,
      words: [
        EnglishWord(
          id: 'here_you_go',
          word: 'Here you go',
          finnishTranslations: [
            FinnishWord(id: 'ole_hyva', word: 'Ole hyvä'),
          ],
        ),
        EnglishWord(
          id: 'you_are_welcome',
          word: 'You are welcome',
          finnishTranslations: [
            FinnishWord(id: 'ei_kesta', word: 'Ei kestä'),
          ],
        ),
        EnglishWord(
          id: 'its_ok_never_mind_no_worries',
          word: 'It\'s ok / Never mind / No worries',
          finnishTranslations: [
            FinnishWord(id: 'ei_se_mitaan', word: 'Ei se mitään'),
          ],
        ),
        EnglishWord(
          id: 'sorry',
          word: 'Sorry',
          finnishTranslations: [
            FinnishWord(id: 'anteeksi', word: 'Anteeksi'),
          ],
        ),
        EnglishWord(
          id: 'sorry_to_bother',
          word: 'Sorry to bother',
          finnishTranslations: [
            FinnishWord(id: 'anteeksi_etta_hairitsen', word: 'Anteeksi, että häiritsen'),
          ],
        ),
        EnglishWord(
          id: 'sorry_i_do_not_understand',
          word: 'Sorry, I do not understand',
          finnishTranslations: [
            FinnishWord(id: 'anteeksi_en_ymmarra', word: 'Anteeksi, en ymmärrä'),
          ],
        ),
        EnglishWord(
          id: 'can_you_repeat',
          word: 'Can you repeat?',
          finnishTranslations: [
            FinnishWord(id: 'voit_sa_toistaa', word: 'Voit sä toistaa?'),
          ],
        ),
        EnglishWord(
          id: 'is_there_a_problem',
          word: 'Is there a problem?',
          finnishTranslations: [
            FinnishWord(id: 'onko_joku_ongelma', word: 'Onko joku ongelma?'),
          ],
        ),
      ],
    ),
    Topic(
      id: 'checking_on_wellbeing',
      name: 'Checking on Well-being',
      isComplete: false,
      isFavorite: false,
      words: [
        EnglishWord(
          id: 'nice_to_meet_you',
          word: 'Nice to meet you',
          finnishTranslations: [
            FinnishWord(id: 'hauska_tutustua', word: 'Hauska tutustua'),
          ],
        ),
        EnglishWord(
          id: 'how_are_you_whats_up',
          word: 'How are you? / What\'s up?',
          finnishTranslations: [
            FinnishWord(id: 'mita_kuuluu', word: 'Mitä kuuluu?'),
          ],
        ),
        EnglishWord(
          id: 'i_am_good',
          word: 'I am good',
          finnishTranslations: [
            FinnishWord(id: 'ihan_hyvaa', word: 'Ihan hyvää'),
          ],
        ),
        EnglishWord(
          id: 'and_you',
          word: 'And you?',
          finnishTranslations: [
            FinnishWord(id: 'enta_sina', word: 'Entä sinä?'),
          ],
        ),
      ],
    ),
    Topic(
      id: 'introduce_yourself',
      name: 'Introduce Yourself',
      isComplete: false,
      isFavorite: false,
      words: [
        EnglishWord(
          id: 'who_are_you',
          word: 'Who are you?',
          finnishTranslations: [
            FinnishWord(id: 'kuka_sina_olet', word: 'Kuka sinä olet?'),
          ],
        ),
        EnglishWord(
          id: 'i_am_mark',
          word: 'I am Mark',
          finnishTranslations: [
            FinnishWord(id: 'mina_olen_mark', word: 'Minä olen Mark'),
          ],
        ),
        EnglishWord(
          id: 'my_name_is_mark',
          word: 'My name is Mark',
          finnishTranslations: [
            FinnishWord(id: 'mun_nimi_on_mark', word: 'Mun nimi on Mark'),
          ],
        ),
        EnglishWord(
          id: 'it_is_written',
          word: 'It is written...',
          finnishTranslations: [
            FinnishWord(id: 'se_kirjoitetaan', word: 'Se kirjoitetaan...'),
          ],
        ),
        EnglishWord(
          id: 'i_am_italian',
          word: 'I am Italian',
          finnishTranslations: [
            FinnishWord(id: 'mina_olen_italialainen', word: 'Minä olen italialainen'),
          ],
        ),
        EnglishWord(
          id: 'what_is_your_name',
          word: 'What is your name?',
          finnishTranslations: [
            FinnishWord(id: 'mika_sinun_nimi_on', word: 'Mikä sinun nimi on?'),
          ],
        ),
        EnglishWord(
          id: 'nice_to_meet_you',
          word: 'Nice to meet you',
          finnishTranslations: [
            FinnishWord(id: 'hauska_tutustua', word: 'Hauska tutustua'),
          ],
        ),
        EnglishWord(
          id: 'i_am_a_new_neighbor',
          word: 'I am a new neighbor',
          finnishTranslations: [
            FinnishWord(id: 'olen_uusi_naapuri', word: 'Olen uusi naapuri'),
          ],
        ),
      ],
    ),
    Topic(
      id: 'asking_questions_new_person',
      name: 'Asking Questions to a New Person',
      isComplete: false,
      isFavorite: false,
      words: [
        EnglishWord(
          id: 'who_are_you',
          word: 'Who are you?',
          finnishTranslations: [
            FinnishWord(id: 'kuka_sina_olet', word: 'Kuka sinä olet?'),
          ],
        ),
        EnglishWord(
          id: 'what_is_your_name',
          word: 'What is your name?',
          finnishTranslations: [
            FinnishWord(id: 'mika_sun_nimi_on', word: 'Mikä sun nimi on?'),
          ],
        ),
        EnglishWord(
          id: 'what_is_your_first_name',
          word: 'What is your first name?',
          finnishTranslations: [
            FinnishWord(id: 'mika_sinun_etunimi_on', word: 'Mikä sinun etunimi on?'),
          ],
        ),
        EnglishWord(
          id: 'what_is_your_last_name',
          word: 'What is your last name?',
          finnishTranslations: [
            FinnishWord(id: 'mika_sinun_sukunimi_on', word: 'Mikä sinun sukunimi on?'),
          ],
        ),
        EnglishWord(
          id: 'how_do_you_spell_your_first_name',
          word: 'How do you spell your first name?',
          finnishTranslations: [
            FinnishWord(id: 'miten_sinun_etunimi_kirjoitetaan', word: 'Miten sinun etunimi kirjoitetaan?'),
          ],
        ),
        EnglishWord(
          id: 'how_old_are_you',
          word: 'How old are you?',
          finnishTranslations: [
            FinnishWord(id: 'minkaikainen_sina_olet', word: 'Minkäikäinen sinä olet?'),
          ],
        ),
        EnglishWord(
          id: 'what_is_your_country_or_city_of_origin',
          word: 'What is your country or city of origin?',
          finnishTranslations: [
            FinnishWord(id: 'mika_on_sinun_kotimaa_tai_kotikaupunki', word: 'Mikä on sinun kotimaa tai kotikaupunki?'),
          ],
        ),
        EnglishWord(
          id: 'what_country_are_you_from',
          word: 'What country are you from?',
          finnishTranslations: [
            FinnishWord(id: 'minkamaalainen_sina_olet', word: 'Minkämaalainen sinä olet?'),
          ],
        ),
        EnglishWord(
          id: 'what_is_your_family_like',
          word: 'What is your family like?',
          finnishTranslations: [
            FinnishWord(id: 'millainen_sinun_perheesi_on', word: 'Millainen sinun perheesi on?'),
          ],
        ),
        EnglishWord(
          id: 'what_is_your_favorite_word_in_finnish',
          word: 'What is your favorite word in Finnish?',
          finnishTranslations: [
            FinnishWord(id: 'mika_on_sinun_lempisana_suomeksi', word: 'Mikä on sinun lempisana suomeksi?'),
          ],
        ),
        EnglishWord(
          id: 'what_do_you_study',
          word: 'What do you study?',
          finnishTranslations: [
            FinnishWord(id: 'mita_sina_opiskelet', word: 'Mitä sinä opiskelet?'),
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
    TopicExercise(
      id: 'polite_phrases',
      name: 'Polite Phrases',
      isComplete: false,
      isFavorite: false,
      exercises: [
        Exercise(
          id: 'polite_phrases_1',
          category: 'Polite Phrases',
          question: 'What is the Finnish translation for "Here you go"?',
          options: ['Ole hyvä', 'Ei se mitään', 'Anteeksi'],
          answer: 'Ole hyvä',
        ),
        Exercise(
          id: 'polite_phrases_2',
          category: 'Polite Phrases',
          question: 'What is the Finnish translation for "Sorry, I do not understand"?',
          options: ['Anteeksi, en ymmärrä', 'Anteeksi, että häiritsen', 'Voit sä toistaa?'],
          answer: 'Anteeksi, en ymmärrä',
        ),
        Exercise(
          id: 'polite_phrases_3',
          category: 'Polite Phrases',
          question: 'What is the Finnish translation for "Can you repeat?"',
          options: ['Onko joku ongelma?', 'Voit sä toistaa?', 'Ei kestä'],
          answer: 'Voit sä toistaa?',
        ),
        Exercise(
          id: 'polite_phrases_4',
          category: 'Polite Phrases',
          question: 'What is the Finnish translation for "You are welcome"?',
          options: ['Ei kestä', 'Anteeksi', 'Ole hyvä'],
          answer: 'Ei kestä',
        ),
        Exercise(
          id: 'polite_phrases_5',
          category: 'Polite Phrases',
          question: 'What is the Finnish translation for "It\'s ok / Never mind / No worries"?',
          options: ['Ei se mitään', 'Anteeksi, että häiritsen', 'Voit sä toistaa?'],
          answer: 'Ei se mitään',
        ),
      ],
    ),
    TopicExercise(
      id: 'checking_on_wellbeing',
      name: 'Checking on Well-being',
      isComplete: false,
      isFavorite: false,
      exercises: [
        Exercise(
          id: 'checking_on_wellbeing_1',
          category: 'Checking on Well-being',
          question: 'What is the Finnish translation for "Nice to meet you"?',
          options: ['Hauska tutustua', 'Mitä kuuluu?', 'Ihan hyvää'],
          answer: 'Hauska tutustua',
        ),
        Exercise(
          id: 'checking_on_wellbeing_2',
          category: 'Checking on Well-being',
          question: 'What is the Finnish translation for "How are you? / What\'s up?"',
          options: ['Mitä kuuluu?', 'Hauska tutustua', 'Entä sinä?'],
          answer: 'Mitä kuuluu?',
        ),
        Exercise(
          id: 'checking_on_wellbeing_3',
          category: 'Checking on Well-being',
          question: 'What is the Finnish translation for "I am good"?',
          options: ['Ihan hyvää', 'Mitä kuuluu?', 'Entä sinä?'],
          answer: 'Ihan hyvää',
        ),
        Exercise(
          id: 'checking_on_wellbeing_4',
          category: 'Checking on Well-being',
          question: 'What is the Finnish translation for "And you?"',
          options: ['Entä sinä?', 'Mitä kuuluu?', 'Hauska tutustua'],
          answer: 'Entä sinä?',
        ),
      ],
    ),
    TopicExercise(
      id: 'introduce_yourself',
      name: 'Introduce Yourself',
      isComplete: false,
      isFavorite: false,
      exercises: [
        Exercise(
          id: 'introduce_yourself_1',
          category: 'Introduce Yourself',
          question: 'What is the Finnish translation for "Who are you?"',
          options: ['Kuka sinä olet?', 'Mikä sinun nimi on?', 'Se kirjoitetaan...'],
          answer: 'Kuka sinä olet?',
        ),
        Exercise(
          id: 'introduce_yourself_2',
          category: 'Introduce Yourself',
          question: 'What is the Finnish translation for "I am Mark"?',
          options: ['Minä olen Mark', 'Olen uusi naapuri', 'Minä olen italialainen'],
          answer: 'Minä olen Mark',
        ),
        Exercise(
          id: 'introduce_yourself_3',
          category: 'Introduce Yourself',
          question: 'What is the Finnish translation for "What is your name?"',
          options: ['Mikä sinun nimi on?', 'Kuka sinä olet?', 'Hauska tutustua'],
          answer: 'Mikä sinun nimi on?',
        ),
        Exercise(
          id: 'introduce_yourself_4',
          category: 'Introduce Yourself',
          question: 'What is the Finnish translation for "I am Italian"?',
          options: ['Minä olen italialainen', 'Se kirjoitetaan...', 'Minä olen Mark'],
          answer: 'Minä olen italialainen',
        ),
        Exercise(
          id: 'introduce_yourself_5',
          category: 'Introduce Yourself',
          question: 'What is the Finnish translation for "I am a new neighbor"?',
          options: ['Olen uusi naapuri', 'Kuka sinä olet?', 'Mikä sinun nimi on?'],
          answer: 'Olen uusi naapuri',
        ),
      ],
    ),
    TopicExercise(
      id: 'asking_questions_new_person',
      name: 'Asking Questions to a New Person',
      isComplete: false,
      isFavorite: false,
      exercises: [
        Exercise(
          id: 'asking_questions_new_person_1',
          category: 'Asking Questions to a New Person',
          question: 'What is the Finnish translation for "Who are you?"',
          options: ['Kuka sinä olet?', 'Mikä sun nimi on?', 'Minkämaalainen sinä olet?'],
          answer: 'Kuka sinä olet?',
        ),
        Exercise(
          id: 'asking_questions_new_person_2',
          category: 'Asking Questions to a New Person',
          question: 'What is the Finnish translation for "How old are you?"',
          options: ['Mikä sinun sukunimi on?', 'Minkäikäinen sinä olet?', 'Mitä sinä opiskelet?'],
          answer: 'Minkäikäinen sinä olet?',
        ),
        Exercise(
          id: 'asking_questions_new_person_3',
          category: 'Asking Questions to a New Person',
          question: 'What is the Finnish translation for "What is your first name?"',
          options: ['Mikä sinun etunimi on?', 'Mitä sinä opiskelet?', 'Miten sinun etunimi kirjoitetaan?'],
          answer: 'Mikä sinun etunimi on?',
        ),
        Exercise(
          id: 'asking_questions_new_person_4',
          category: 'Asking Questions to a New Person',
          question: 'What is the Finnish translation for "What is your favorite word in Finnish?"',
          options: ['Mikä sinun lempisana suomeksi?', 'Mitä sinä opiskelet?', 'Millainen sinun perheesi on?'],
          answer: 'Mikä sinun lempisana suomeksi?',
        ),
        Exercise(
          id: 'asking_questions_new_person_5',
          category: 'Asking Questions to a New Person',
          question: 'What is the Finnish translation for "How do you spell your first name?"',
          options: ['Mikä sinun sukunimi on?', 'Miten sinun etunimi kirjoitetaan?', 'Kuka sinä olet?'],
          answer: 'Miten sinun etunimi kirjoitetaan?',
        ),
      ],
    ),
  ],
);
