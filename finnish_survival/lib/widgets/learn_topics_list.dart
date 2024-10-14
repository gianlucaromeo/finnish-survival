import 'package:finnish_survival/finnish_survival.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LearnTopicsList extends GetView<DbController> {
  const LearnTopicsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Obx(
        () => Column(
          children: [
            ...controller.topics.map(
              (topic) {
                return LearnTopicItem(
                  topic: topic,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          controller.setLearnTopic(topic);
                          return const LearnTopicPage();
                        },
                      ),
                    );
                  },
                  onFavoriteTap: () {
                    controller.toggleTopicIsFavorite(topic.id);
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
