import 'package:finnish_survival/finnish_survival.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LearnTopicAppBar extends GetView<DbController>
    implements PreferredSizeWidget {
  const LearnTopicAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: controller.learnTopic.value!.name,
      onBack: () {
        Get.back();
        controller.resetLearnTopic();
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
