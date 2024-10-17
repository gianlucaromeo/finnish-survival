import 'package:finnish_survival/modules/exercises/exercises.dart';
import 'package:finnish_survival/modules/common/common.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopicExerciseStepsProgressBar extends GetView<ExercisesPageController> {
  const TopicExerciseStepsProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    if (controller.currentTopicExercise.value == null) {
      return const SizedBox();
    }

    return Obx(() {
      final currentStep = controller.currentExerciseIndex.value! + 1;

      final currentExercise = controller.currentTopicExercise.value;
      final totalSteps = currentExercise!.exercises.length;

      return LinearProgressIndicator(
        value: currentStep / totalSteps,
        minHeight: 10.0,
        borderRadius: BorderRadius.circular(10.0),
        valueColor: AlwaysStoppedAnimation(AppColors.highlightsDarkest),
        backgroundColor: AppColors.neutralLightMedium,
      );
    });
  }
}
