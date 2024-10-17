import 'package:finnish_survival/finnish_survival.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

final _initialDb = Database(
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
  ],
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final sharedPreferences = await SharedPreferences.getInstance();
  sharedPreferences.logAll();

  Get.put(NavigationController(), permanent: true);
  Get.put(LocalDbService(sharedPreferences), permanent: true);
  Get.put(FakeDatabaseService(_initialDb), permanent: true);
  Get.put(LearnPageController(), permanent: true);
  Get.put(ExercisesPageController(), permanent: true);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData().copyWith(
        textTheme: AppFonts.textTheme,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: AppColors.highlightsDarkest,
          selectionColor: AppColors.highlightsDarkest,
          selectionHandleColor: AppColors.highlightsDarkest,
        ),
      ),
      getPages: [
        GetPage(
          name: '/learn',
          page: () => const ResponsiveLayout(
            small: LearnPageSmall(),
            large: LearnPageLarge(),
          ),
          transition: Transition.noTransition,
        ),
        GetPage(
          name: '/exercises',
          page: () => const ResponsiveLayout(
            small: ExercisesPageSmall(),
            large: ExercisesPageLarge(),
          ),
          transition: Transition.noTransition,
        ),
        GetPage(
          name: '/exercises/current',
          page: () => const ResponsiveLayout(
            small: TopicExercisePageSmall(),
            large: TopicExercisePageLarge(),
          ),
        ),
      ],
      home: const ResponsiveLayout(
        small: LearnPageSmall(),
        medium: LearnPageLarge(),
        large: LearnPageLarge(),
      ),
    );
  }
}
