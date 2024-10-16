import 'package:finnish_survival/modules/common/common.dart';
import 'package:flutter/material.dart';

class TopicExerciseItem extends StatelessWidget {
  const TopicExerciseItem({
    super.key,
    required this.topic,
    required this.onFavoriteTap,
    required this.onTap,
  });

  final TopicExercise topic;
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
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.neutralLightLight,
                borderRadius: BorderRadius.circular(16.0),
              ),
              padding: 16.0.paddingAll,
              child: Row(
                children: [
                  /// ICON
                  FavoriteIconButton(
                      isFavorite: topic.isFavorite,
                      onFavoriteTap: () {
                        onFavoriteTap.call();
                      }),
                  16.0.horizontalSpace,

                  /// TITLE
                  Expanded(
                    child: Text(
                      topic.name,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: AppFonts.h4,
                    ),
                  ),
                  16.0.verticalSpace,

                  /// ICON
                  IconButton(
                    onPressed: () {
                      onTap.call();
                    },
                    icon: Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: AppColors.neutralDarkLightest,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}