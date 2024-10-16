import 'package:finnish_survival/modules/learn/learn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LearnTopicFinnishWords extends GetView<LearnPageController> {
  const LearnTopicFinnishWords({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Obx(() {
        return Column(
          children: [
            ...controller.currentTranslations.map(
              (finnishWord) => LearnFinnishWordItem(
                finnishWord: finnishWord,
                onFavoriteTap: () {
                  controller.toggleFinnishWordIsFavorite(
                    finnishWord.id,
                  );
                },
              ),
            ),
          ],
        );
      }),
    );
  }
}
