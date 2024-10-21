import 'package:finnish_survival/modules/common/common.dart';
import 'package:flutter/material.dart';

class LearnTopicItem extends StatelessWidget {
  const LearnTopicItem({
    super.key,
    required this.topic,
    required this.onFavoriteTap,
    required this.onTap,
  });

  final Topic topic;
  final Function onFavoriteTap;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 16.0.paddingOnlyBottom,
      child: Row(
        children: [
          /// INDICATOR
          StatusIndicator(isComplete: topic.isComplete),
          16.0.horizontalSpace,

          /// ITEM
          Expanded(
            child: HoverableTile(
              title: topic.name,
              isFavorite: topic.isFavorite,
              onFavoriteTap: onFavoriteTap,
              onTap: onTap,
            ),
          ),
        ],
      ),
    );
  }
}
