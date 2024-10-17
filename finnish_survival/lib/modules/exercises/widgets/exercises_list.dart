import 'package:finnish_survival/finnish_survival.dart';
import 'package:finnish_survival/modules/exercises/exercises.dart';
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
                return TopicExerciseItem(
                  topic: topicExercise,
                  onFavoriteTap: () {
                    controller.toggleTopicExerciseIsFavorite(topicExercise.id);
                  },
                  onTap: () {
                    controller.setExercises(topicExercise);
                    Get.find<NavigationController>().setCurrentIndex(2);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
