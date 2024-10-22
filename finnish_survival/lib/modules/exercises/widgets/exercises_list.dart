import 'package:finnish_survival/finnish_survival.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExercisesList extends GetView<ExercisesPageController> {
  const ExercisesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Obx(
        () => Column(
          children: [
            ...controller.database.value.topicExercises.map(
              (topicExercise) {
                if (controller.showFavorites.value && !topicExercise.isFavorite) {
                  return const SizedBox.shrink();
                }

                return TopicExerciseItem(
                  topic: topicExercise,
                  onFavoriteTap: () {
                    controller.toggleTopicExerciseIsFavorite(topicExercise.id);
                  },
                  onTap: () {
                    controller.setExercises(topicExercise);
                    Get.find<NavigationController>().pushToIndex(2);
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
