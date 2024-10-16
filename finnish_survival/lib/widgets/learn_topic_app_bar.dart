import 'package:finnish_survival/finnish_survival.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LearnTopicAppBar extends GetView<LearnPageController>
    implements PreferredSizeWidget {
  const LearnTopicAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: controller.currentTopic.value!.name,
      onBack: () {
        Get.back();
        controller.resetTopic();
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
