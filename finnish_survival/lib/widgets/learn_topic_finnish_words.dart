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
      child: Obx(
            () {
          final currentTopic = controller.learnTopic.value!;
          final currentWordIndex = controller.learnWordIndex.value!;
          final currentWord = currentTopic.words[currentWordIndex];
          final translations = currentWord.finnishTranslations;
          return Column(
            children: [
              ...translations.map(
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
        },
      ),
    );
  }
}