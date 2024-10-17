import 'package:finnish_survival/modules/exercises/exercises.dart';
import 'package:finnish_survival/modules/common/common.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopicExerciseAppBar extends GetView<ExercisesPageController>
    implements PreferredSizeWidget {
  const TopicExerciseAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    if (controller.currentTopicExercise.value == null) {
      return const SizedBox();
    }

    return CustomAppBar(
      title: controller.currentTopicExercise.value!.name,
      onBack: () {
        Get.find<NavigationController>().setCurrentIndex(1);
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
