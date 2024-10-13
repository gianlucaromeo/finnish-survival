import 'package:finnish_survival/finnish_survival.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LearnTopicStepsProgressBar extends GetView<DbController> {
  const LearnTopicStepsProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final currentStep = controller.learnWordIndex.value! + 1;
        final totalSteps = controller.learnTopic.value!.words.length;

        return LinearProgressIndicator(
          value: currentStep / totalSteps,
          minHeight: 10.0,
          borderRadius: BorderRadius.circular(10.0),
          valueColor: AlwaysStoppedAnimation(AppColors.highlightsDarkest),
          backgroundColor: AppColors.neutralLightMedium,
        );
      },
    );
  }
}
