import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:finnish_survival/finnish_survival.dart';

class LearnTopicWordTitle extends GetView<LearnPageController> {
  const LearnTopicWordTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final index = controller.currentWordIndex.value!;
      return Text(
        controller.currentTopic.value!.words[index].word,
        style: AppFonts.h1,
      );
    });
  }
}
