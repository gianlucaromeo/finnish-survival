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
    Topic(
      id: 'languages',
      name: 'Languages',
      isComplete: false,
      isFavorite: false,
      words: [
        EnglishWord(
          id: 'which_languages_do_you_speak',
          word: 'Which languages do you speak?',
          finnishTranslations: [
            FinnishWord(id: 'mita_kielta_sa_puhut', word: 'Mitä kieltä sä puhut?'),
          ],
        ),
        EnglishWord(
          id: 'i_speak_finnish',
          word: 'I speak Finnish',
          finnishTranslations: [
            FinnishWord(id: 'mina_puhun_suomea', word: 'Minä puhun suomea'),
          ],
        ),
        EnglishWord(
          id: 'i_only_speak_a_little_finnish',
          word: 'I only speak a little Finnish',
          finnishTranslations: [
            FinnishWord(id: 'mina_puhun_vain_vahan_suomea', word: 'Minä puhun vain vähän suomea'),
          ],
        ),
        EnglishWord(
          id: 'i_understand_a_bit_of_finnish',
          word: 'I understand a bit of Finnish',
          finnishTranslations: [
            FinnishWord(id: 'mina_ymmaran_vahan_suomea', word: 'Minä ymmärrän vähän suomea'),
          ],
        ),
        EnglishWord(
          id: 'i_study_finnish',
          word: 'I study Finnish',
          finnishTranslations: [
            FinnishWord(id: 'mina_opiskelen_suomea', word: 'Minä opiskelen suomea'),
          ],
        ),
        EnglishWord(
          id: 'i_speak_multiple_languages',
          word: 'I speak Italian, English, Spanish, and a bit of Finnish',
          finnishTranslations: [
            FinnishWord(id: 'ma_puhun_italiaa_englanti_espanja_vahan_suomea', word: 'Mä puhun italiaa, englantia, espanjaa ja vähän suomea'),
          ],
        ),
        EnglishWord(
          id: 'my_mother_tongue_is',
          word: 'My mother-tongue is...',
          finnishTranslations: [
            FinnishWord(id: 'aidinkieli_on', word: 'Äidinkieli on...'),
          ],
        ),
        EnglishWord(
          id: 'do_you_speak_english_or_french',
          word: 'Do you speak English or French?',
          finnishTranslations: [
            FinnishWord(id: 'puhutko_sina_englantia_tai_ranskaa', word: 'Puhutko sinä englantia tai ranskaa?'),
          ],
        ),
        EnglishWord(
          id: 'i_speak_english_and_french',
          word: 'I speak English and French',
          finnishTranslations: [
            FinnishWord(id: 'mina_puhun_englantia_ranskaa', word: 'Minä puhun englantia ja ranskaa'),
          ],
        ),
        EnglishWord(
          id: 'what_is_x_in_english',
          word: 'What is "x" in English?',
          finnishTranslations: [
            FinnishWord(id: 'mika_on_englantiksi', word: 'Mikä “x” on englanniksi?'),
          ],
        ),
      ],
    ),
    Topic(
      id: 'cities',
      name: 'Cities',
      isComplete: false,
      isFavorite: false,
      words: [
        EnglishWord(
          id: 'i_am_from_italy',
          word: 'I am from Italy',
          finnishTranslations: [
            FinnishWord(id: 'ma_olen_italialainen', word: 'Mä olen italialainen'),
          ],
        ),
        EnglishWord(
          id: 'where_do_you_live',
          word: 'Where do you live?',
          finnishTranslations: [
            FinnishWord(id: 'missa_sa_asut', word: 'Missä sä asut?'),
          ],
        ),
        EnglishWord(
          id: 'i_live_in_finland',
          word: 'I live in Finland',
          finnishTranslations: [
            FinnishWord(id: 'ma_asun_suomessa', word: 'Mä asun Suomessa'),
          ],
        ),
        EnglishWord(
          id: 'capital_city_of_finland',
          word: 'The capital city of Finland is Helsinki',
          finnishTranslations: [
            FinnishWord(id: 'suomen_paakaupunki_helsinki', word: 'Suomen pääkaupunki on Helsinki'),
          ],
        ),
        EnglishWord(
          id: 'carlo_comes_from_spain',
          word: 'Carlo comes from Spain',
          finnishTranslations: [
            FinnishWord(id: 'carlo_on_kotoisin_espanjasta', word: 'Carlo on kotoisin Espanjasta'),
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
          id: 'i_am_finnish',
          word: 'I am Finnish',
          finnishTranslations: [
            FinnishWord(id: 'mina_olen_suomalainen', word: 'Minä olen suomalainen'),
          ],
        ),
      ],
    ),
    Topic(
      id: 'personal_data_part_1',
      name: 'Personal Data (Part 1)',
      isComplete: false,
      isFavorite: false,
      words: [
        EnglishWord(
          id: 'first_name',
          word: 'First name',
          finnishTranslations: [
            FinnishWord(id: 'etunimi', word: 'Etunimi'),
          ],
        ),
        EnglishWord(
          id: 'last_name',
          word: 'Last name',
          finnishTranslations: [
            FinnishWord(id: 'sukunimi', word: 'Sukunimi'),
          ],
        ),
        EnglishWord(
          id: 'social_security_number',
          word: 'Social Security Number',
          finnishTranslations: [
            FinnishWord(id: 'henkilotunnus', word: 'Henkilötunnus'),
          ],
        ),
        EnglishWord(
          id: 'phone_number',
          word: 'Phone number',
          finnishTranslations: [
            FinnishWord(id: 'puhelinnumero', word: 'Puhelinnumero'),
          ],
        ),
        EnglishWord(
          id: 'age',
          word: 'Age',
          finnishTranslations: [
            FinnishWord(id: 'ika', word: 'Ikä'),
          ],
        ),
        EnglishWord(
          id: 'years',
          word: 'Years',
          finnishTranslations: [
            FinnishWord(id: 'vuotta', word: 'Vuotta'),
          ],
        ),
        EnglishWord(
          id: 'email_address',
          word: 'Email address',
          finnishTranslations: [
            FinnishWord(id: 'sahkopostiosoite', word: 'Sähköpostiosoite'),
          ],
        ),
        EnglishWord(
          id: 'hometown',
          word: 'Hometown',
          finnishTranslations: [
            FinnishWord(id: 'kotikaupunki', word: 'Kotikaupunki'),
          ],
        ),
        EnglishWord(
          id: 'citizenship',
          word: 'Citizenship',
          finnishTranslations: [
            FinnishWord(id: 'kansalaisuus', word: 'Kansalaisuus'),
          ],
        ),
        EnglishWord(
          id: 'sex',
          word: 'Sex',
          finnishTranslations: [
            FinnishWord(id: 'sukupuoli', word: 'Sukupuoli'),
          ],
        ),
        EnglishWord(
          id: 'mother_tongue',
          word: 'Mother-tongue',
          finnishTranslations: [
            FinnishWord(id: 'aidinkieli', word: 'Äidinkieli'),
          ],
        ),
        EnglishWord(
          id: 'man',
          word: 'Man',
          finnishTranslations: [
            FinnishWord(id: 'mies', word: 'Mies'),
          ],
        ),
        EnglishWord(
          id: 'woman',
          word: 'Woman',
          finnishTranslations: [
            FinnishWord(id: 'nainen', word: 'Nainen'),
          ],
        ),
        EnglishWord(
          id: 'other',
          word: 'Other',
          finnishTranslations: [
            FinnishWord(id: 'muu', word: 'Muu'),
          ],
        ),
      ],
    ),
    Topic(
      id: 'personal_data_part_2',
      name: 'Personal Data (Part 2)',
      isComplete: false,
      isFavorite: false,
      words: [
        EnglishWord(
          id: 'address',
          word: 'Address',
          finnishTranslations: [
            FinnishWord(id: 'osoite', word: 'Osoite'),
          ],
        ),
        EnglishWord(
          id: 'postal_code',
          word: 'Postal code',
          finnishTranslations: [
            FinnishWord(id: 'postinumero', word: 'Postinumero'),
          ],
        ),
        EnglishWord(
          id: 'city',
          word: 'City',
          finnishTranslations: [
            FinnishWord(id: 'kaupunki', word: 'Kaupunki'),
          ],
        ),
        EnglishWord(
          id: 'native_language',
          word: 'Native language',
          finnishTranslations: [
            FinnishWord(id: 'aidinkieli', word: 'Äidinkieli'),
          ],
        ),
        EnglishWord(
          id: 'contact_method',
          word: 'Contact method',
          finnishTranslations: [
            FinnishWord(id: 'yhteydenottotapa', word: 'Yhteydenottotapa'),
          ],
        ),
        EnglishWord(
          id: 'by_letter_mail',
          word: 'By letter mail',
          finnishTranslations: [
            FinnishWord(id: 'postitse', word: 'Postitse'),
          ],
        ),
        EnglishWord(
          id: 'by_email',
          word: 'By email',
          finnishTranslations: [
            FinnishWord(id: 'sahkopostitse', word: 'Sähköpostitse'),
          ],
        ),
        EnglishWord(
          id: 'something_else',
          word: 'Something else',
          finnishTranslations: [
            FinnishWord(id: 'muuta', word: 'Muuta'),
          ],
        ),
        EnglishWord(
          id: 'ready',
          word: 'Ready',
          finnishTranslations: [
            FinnishWord(id: 'valmis', word: 'Valmis'),
          ],
        ),
        EnglishWord(
          id: 'cancel',
          word: 'Cancel',
          finnishTranslations: [
            FinnishWord(id: 'peruuta', word: 'Peruuta'),
          ],
        ),
      ],
    ),
    Topic(
      id: 'status',
      name: 'Status',
      isComplete: false,
      isFavorite: false,
      words: [
        EnglishWord(
          id: 'partner',
          word: 'Partner',
          finnishTranslations: [
            FinnishWord(id: 'kumppani', word: 'Kumppani'),
          ],
        ),
        EnglishWord(
          id: 'married',
          word: 'Married',
          finnishTranslations: [
            FinnishWord(id: 'naimisissa', word: 'Naimisissa'),
          ],
        ),
        EnglishWord(
          id: 'divorced',
          word: 'Divorced',
          finnishTranslations: [
            FinnishWord(id: 'eronnut', word: 'Eronnut'),
          ],
        ),
        EnglishWord(
          id: 'unmarried',
          word: 'Unmarried',
          finnishTranslations: [
            FinnishWord(id: 'naimaton', word: 'Naimaton'),
          ],
        ),
        EnglishWord(
          id: 'single_parent',
          word: 'Single parent',
          finnishTranslations: [
            FinnishWord(id: 'yksinhuoltaja', word: 'Yksinhuoltaja'),
          ],
        ),
        EnglishWord(
          id: 'divorced_single_parent',
          word: 'Divorced single parent',
          finnishTranslations: [
            FinnishWord(id: 'eronnut_yksinhuoltaja', word: 'Eronnut yksinhuoltaja'),
          ],
        ),
        EnglishWord(
          id: 'not_married_but_live_together',
          word: 'Not married but live together',
          finnishTranslations: [
            FinnishWord(id: 'avoliitossa', word: 'Avoliitossa'),
          ],
        ),
        EnglishWord(
          id: 'together_as_one',
          word: 'Together (as one)',
          finnishTranslations: [
            FinnishWord(id: 'yhdessä', word: 'Yhdessä'),
          ],
        ),
        EnglishWord(
          id: 'alone',
          word: 'Alone',
          finnishTranslations: [
            FinnishWord(id: 'yksin', word: 'Yksin'),
          ],
        ),
        EnglishWord(
          id: 'single',
          word: 'Single',
          finnishTranslations: [
            FinnishWord(id: 'sinkku', word: 'Sinkku'),
          ],
        ),
        EnglishWord(
          id: 'cohabitating',
          word: 'Cohabitating',
          finnishTranslations: [
            FinnishWord(id: 'avoliitossa', word: 'Avoliitossa'),
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
    TopicExercise(
      id: 'languages',
      name: 'Languages',
      isComplete: false,
      isFavorite: false,
      exercises: [
        Exercise(
          id: 'languages_1',
          category: 'Languages',
          question: 'What is the Finnish translation for "Which languages do you speak?"',
          options: ['Mitä kieltä sä puhut?', 'Minä puhun suomea', 'Puhutko sinä englantia tai ranskaa?'],
          answer: 'Mitä kieltä sä puhut?',
        ),
        Exercise(
          id: 'languages_2',
          category: 'Languages',
          question: 'What is the Finnish translation for "I speak Finnish"?',
          options: ['Minä puhun vain vähän suomea', 'Minä puhun suomea', 'Minä ymmärrän vähän suomea'],
          answer: 'Minä puhun suomea',
        ),
        Exercise(
          id: 'languages_3',
          category: 'Languages',
          question: 'What is the Finnish translation for "Do you speak English or French?"',
          options: ['Puhutko sinä englantia tai ranskaa?', 'Mikä on sinun äidinkieli?', 'Minä opiskelen suomea'],
          answer: 'Puhutko sinä englantia tai ranskaa?',
        ),
        Exercise(
          id: 'languages_4',
          category: 'Languages',
          question: 'What is the Finnish translation for "What is \'x\' in English?"',
          options: ['Mikä “x” on englanniksi?', 'Minä puhun suomea', 'Puhutko sinä englantia?'],
          answer: 'Mikä “x” on englanniksi?',
        ),
        Exercise(
          id: 'languages_5',
          category: 'Languages',
          question: 'What is the Finnish translation for "I speak Italian, English, Spanish, and a bit of Finnish"?',
          options: ['Mä puhun italiaa, englantia, espanjaa ja vähän suomea', 'Minä opiskelen suomea', 'Mitä sinä puhut?'],
          answer: 'Mä puhun italiaa, englantia, espanjaa ja vähän suomea',
        ),
      ],
    ),
    TopicExercise(
      id: 'cities',
      name: 'Cities',
      isComplete: false,
      isFavorite: false,
      exercises: [
        Exercise(
          id: 'cities_1',
          category: 'Cities',
          question: 'What is the Finnish translation for "I am from Italy"?',
          options: ['Mä olen italialainen', 'Mä asun Suomessa', 'Carlos on kotoisin Espanjasta'],
          answer: 'Mä olen italialainen',
        ),
        Exercise(
          id: 'cities_2',
          category: 'Cities',
          question: 'What is the Finnish translation for "Where do you live?"',
          options: ['Mistä sinä olet?', 'Missä sä asut?', 'Minä olen suomalainen'],
          answer: 'Missä sä asut?',
        ),
        Exercise(
          id: 'cities_3',
          category: 'Cities',
          question: 'What is the Finnish translation for "The capital city of Finland is Helsinki"?',
          options: ['Carlos on kotoisin Espanjasta', 'Suomen pääkaupunki on Helsinki', 'Minä olen suomalainen'],
          answer: 'Suomen pääkaupunki on Helsinki',
        ),
        Exercise(
          id: 'cities_4',
          category: 'Cities',
          question: 'What is the Finnish translation for "Carlo comes from Spain"?',
          options: ['Mä olen italialainen', 'Carlos on kotoisin Espanjasta', 'Mä asun Suomessa'],
          answer: 'Carlo on kotoisin Espanjasta',
        ),
        Exercise(
          id: 'cities_5',
          category: 'Cities',
          question: 'What is the Finnish translation for "I am Finnish"?',
          options: ['Minä olen italialainen', 'Minä olen suomalainen', 'Missä sä asut?'],
          answer: 'Minä olen suomalainen',
        ),
      ],
    ),
    TopicExercise(
      id: 'personal_data_part_1',
      name: 'Personal Data (Part 1)',
      isComplete: false,
      isFavorite: false,
      exercises: [
        Exercise(
          id: 'personal_data_part_1_1',
          category: 'Personal Data (Part 1)',
          question: 'What is the Finnish translation for "First name"?',
          options: ['Sukunimi', 'Etunimi', 'Ikä'],
          answer: 'Etunimi',
        ),
        Exercise(
          id: 'personal_data_part_1_2',
          category: 'Personal Data (Part 1)',
          question: 'What is the Finnish translation for "Last name"?',
          options: ['Puhelinnumero', 'Sukunimi', 'Äidinkieli'],
          answer: 'Sukunimi',
        ),
        Exercise(
          id: 'personal_data_part_1_3',
          category: 'Personal Data (Part 1)',
          question: 'What is the Finnish translation for "Phone number"?',
          options: ['Puhelinnumero', 'Sähköpostiosoite', 'Sukupuoli'],
          answer: 'Puhelinnumero',
        ),
        Exercise(
          id: 'personal_data_part_1_4',
          category: 'Personal Data (Part 1)',
          question: 'What is the Finnish translation for "Email address"?',
          options: ['Äidinkieli', 'Kotikaupunki', 'Sähköpostiosoite'],
          answer: 'Sähköpostiosoite',
        ),
        Exercise(
          id: 'personal_data_part_1_5',
          category: 'Personal Data (Part 1)',
          question: 'What is the Finnish translation for "Sex"?',
          options: ['Kansalaisuus', 'Sukupuoli', 'Ikä'],
          answer: 'Sukupuoli',
        ),
      ],
    ),
    TopicExercise(
      id: 'personal_data_part_2',
      name: 'Personal Data (Part 2)',
      isComplete: false,
      isFavorite: false,
      exercises: [
        Exercise(
          id: 'personal_data_part_2_1',
          category: 'Personal Data (Part 2)',
          question: 'What is the Finnish translation for "Address"?',
          options: ['Osoite', 'Postinumero', 'Peruuta'],
          answer: 'Osoite',
        ),
        Exercise(
          id: 'personal_data_part_2_2',
          category: 'Personal Data (Part 2)',
          question: 'What is the Finnish translation for "Postal code"?',
          options: ['Osoite', 'Postinumero', 'Yhteydenottotapa'],
          answer: 'Postinumero',
        ),
        Exercise(
          id: 'personal_data_part_2_3',
          category: 'Personal Data (Part 2)',
          question: 'What is the Finnish translation for "By email"?',
          options: ['Postitse', 'Sähköpostitse', 'Muuta'],
          answer: 'Sähköpostitse',
        ),
        Exercise(
          id: 'personal_data_part_2_4',
          category: 'Personal Data (Part 2)',
          question: 'What is the Finnish translation for "Something else"?',
          options: ['Valmis', 'Muuta', 'Osoite'],
          answer: 'Muuta',
        ),
        Exercise(
          id: 'personal_data_part_2_5',
          category: 'Personal Data (Part 2)',
          question: 'What is the Finnish translation for "Ready"?',
          options: ['Peruuta', 'Valmis', 'Sähköpostitse'],
          answer: 'Valmis',
        ),
      ],
    ),
    TopicExercise(
      id: 'status',
      name: 'Status',
      isComplete: false,
      isFavorite: false,
      exercises: [
        Exercise(
          id: 'status_1',
          category: 'Status',
          question: 'What is the Finnish translation for "Partner"?',
          options: ['Kumppani', 'Yksinhuoltaja', 'Avoliitossa'],
          answer: 'Kumppani',
        ),
        Exercise(
          id: 'status_2',
          category: 'Status',
          question: 'What is the Finnish translation for "Divorced single parent"?',
          options: ['Yksinhuoltaja', 'Eronnut yksinhuoltaja', 'Sinkku'],
          answer: 'Eronnut yksinhuoltaja',
        ),
        Exercise(
          id: 'status_3',
          category: 'Status',
          question: 'What is the Finnish translation for "Single"?',
          options: ['Avoliitossa', 'Naimisissa', 'Sinkku'],
          answer: 'Sinkku',
        ),
        Exercise(
          id: 'status_4',
          category: 'Status',
          question: 'What is the Finnish translation for "Not married but live together"?',
          options: ['Avoliitossa', 'Eronnut', 'Naimaton'],
          answer: 'Avoliitossa',
        ),
        Exercise(
          id: 'status_5',
          category: 'Status',
          question: 'What is the Finnish translation for "Alone"?',
          options: ['Yhdessä', 'Yksin', 'Kumppani'],
          answer: 'Yksin',
        ),
      ],
    ),
  ],
);
