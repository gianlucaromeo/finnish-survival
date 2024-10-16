import 'package:finnish_survival/modules/learn/learn.dart';
import 'package:finnish_survival/modules/common/common.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
