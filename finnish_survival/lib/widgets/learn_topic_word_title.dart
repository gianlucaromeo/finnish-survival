import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:finnish_survival/finnish_survival.dart';

class LearnTopicWordTitle extends GetView<DbController> {
  const LearnTopicWordTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final index = controller.learnWordIndex.value!;
      return Text(
        controller.learnTopic.value!.words[index].word,
        style: AppFonts.h1,
      );
    });
  }
}
