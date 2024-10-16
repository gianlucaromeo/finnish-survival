import 'package:finnish_survival/finnish_survival.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExercisesPageAppBar extends GetView<ExercisesPageController>
    implements PreferredSizeWidget {
  const ExercisesPageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: controller.currentTopicExercise.value!.name,
      onBack: () {
        Get.back();
        controller.resetExercises();
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
