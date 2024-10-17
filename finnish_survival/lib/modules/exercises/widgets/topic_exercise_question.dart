import 'package:finnish_survival/modules/common/common.dart';
import 'package:finnish_survival/modules/exercises/exercises.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopicExerciseQuestion extends GetView<ExercisesPageController> {
  const TopicExerciseQuestion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (controller.currentTopicExercise.value == null) {
      return const SizedBox();
    }

    return Obx(() {
      final index = controller.currentExerciseIndex.value!;
      return Text(
        controller.currentTopicExercise.value!.exercises[index].question,
        style: AppFonts.h1,
      );
    });
  }
}