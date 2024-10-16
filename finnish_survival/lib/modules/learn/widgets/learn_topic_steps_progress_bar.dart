import 'package:finnish_survival/modules/learn/learn.dart';
import 'package:finnish_survival/modules/common/common.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LearnTopicStepsProgressBar extends GetView<LearnPageController> {
  const LearnTopicStepsProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final currentStep = controller.currentWordIndex.value! + 1;
        final totalSteps = controller.currentTopic.value!.words.length;

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
