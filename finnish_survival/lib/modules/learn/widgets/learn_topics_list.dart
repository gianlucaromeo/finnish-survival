import 'package:finnish_survival/modules/learn/learn.dart';
import 'package:finnish_survival/modules/common/common.dart';
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
                return LearnTopicItem(
                  topic: topic,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          controller.setTopic(topic);
                          return const ResponsiveLayout(
                            small: LearnTopicPageSmall(),
                            medium: LearnTopicPageLarge(),
                            large: LearnTopicPageLarge(),
                          );
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
