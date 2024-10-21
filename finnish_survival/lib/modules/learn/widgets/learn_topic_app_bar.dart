import 'package:finnish_survival/modules/learn/learn.dart';
import 'package:finnish_survival/modules/common/common.dart';
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
        controller.resetTopic();
        Get.back();
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
