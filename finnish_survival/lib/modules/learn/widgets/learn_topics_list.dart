import 'package:finnish_survival/finnish_survival.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LearnTopicsList extends GetView<LearnPageController> {
  const LearnTopicsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Obx(
        () => Column(
          children: [
            ...controller.database.value.topics.map(
              (topic) {
                if (controller.showFavorites.value && !topic.isFavorite) {
                  return const SizedBox.shrink();
                }

                return LearnTopicItem(
                  topic: topic,
                  onTap: () {
                    controller.setTopic(topic);
                    Get.find<NavigationController>().pushToIndex(3);
                  },
                  onFavoriteTap: () {
                    controller.toggleTopicIsFavorite(topic.id);
                  },
                );
              },
            ),
            if (controller.showFavorites.value &&
                controller.thereAreNoFavoritesTopics)
              const NoFavorites(),
          ],
        ),
      ),
    );
  }
}
