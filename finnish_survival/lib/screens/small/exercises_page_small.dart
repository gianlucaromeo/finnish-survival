import 'package:finnish_survival/finnish_survival.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExercisesPageSmall extends StatelessWidget {
  const ExercisesPageSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutralLightLightest,
      body: SafeArea(
        child: Padding(
          padding: AppPadding.scaffoldPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ready to test your Finnish skills?",
                style: AppFonts.h1,
              ),
              12.0.verticalSpace,
              Filter(
                selected: 0,
                onOpenFilters: () {},
              ),
              24.0.verticalSpace,
              const Expanded(
                child: ExercisesList(),
              ),
            ],
          ),
        ),
      ),

      /// BOTTOM BAR
      bottomNavigationBar: const AppBottomBar(),
    );
  }
}

class ExercisesList extends GetView<ExercisesPageController> {
  const ExercisesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...controller.fakeDatabase.value.topicExercises.map(
            (topicExercise) {
              return TopicExerciseItem(
                topic: topicExercise,
                onFavoriteTap: () {
                  // TODO - Implement favorite functionality
                },
                onTap: () {
                  // TODO - Navigate to the exercise page
                },
              );
            },
          ),
        ],
      ),
    );
  }
}