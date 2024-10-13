import 'package:finnish_survival/finnish_survival.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LearnTopicNextWordButton extends GetView<DbController> {
  const LearnTopicNextWordButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Obx(() {
        final complete = controller.isLearnTopicComplete.value;

        return ElevatedButton(
          onPressed: () {
            if (!complete) {
              controller.nextLearnEnglishWord();
            } else {
              Get.back();
              controller.resetLearnTopic();
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
            complete ? "Done" : "Next",
            style: AppFonts.h4.copyWith(
              color: AppColors.neutralLightLightest,
            ),
          ),
        );
      }),
    );
  }
}
