import 'package:finnish_survival/finnish_survival.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LearnTopicFinnishWords extends GetView<DbController> {
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