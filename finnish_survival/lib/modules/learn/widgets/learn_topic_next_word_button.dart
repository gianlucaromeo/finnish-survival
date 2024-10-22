import 'package:finnish_survival/modules/learn/learn.dart';
import 'package:finnish_survival/modules/common/common.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LearnTopicNextWordButton extends GetView<LearnPageController> {
  const LearnTopicNextWordButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Obx(() {
        final lastWord = controller.isLastWord.value;

        return ElevatedButton(
          onPressed: () {
            if (!lastWord) {
              controller.nextWord();
            } else {
              controller.markTopicAsComplete(controller.currentTopic.value!.id);
              Get.find<NavigationController>().setCurrentIndex(0);
              controller.resetTopic();
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.highlightsDarkest,
            padding: 16.0.paddingAll,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          child: Text(
            lastWord ? "Done" : "Next",
            style: AppFonts.h4.copyWith(
              color: AppColors.neutralLightLightest,
            ),
          ),
        );
      }),
    );
  }
}
