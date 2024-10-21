import 'package:finnish_survival/fake_database.dart';
import 'package:finnish_survival/finnish_survival.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final sharedPreferences = await SharedPreferences.getInstance();
  sharedPreferences.logAll();

  Get.put(NavigationController(), permanent: true);
  Get.put(LocalDbService(sharedPreferences), permanent: true);
  Get.put(FakeDatabaseService(fakeDatabase), permanent: true);
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
          name: '/learn/current',
          page: () => const ResponsiveLayout(
            small: LearnTopicPageSmall(),
            medium: LearnTopicPageLarge(),
            large: LearnTopicPageLarge(),
          ),
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
