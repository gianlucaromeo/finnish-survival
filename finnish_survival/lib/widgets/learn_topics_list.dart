import 'dart:developer' as dev;
import 'dart:math';

import 'package:finnish_survival/mock_data.dart';
import 'package:finnish_survival/screens/learn_topic_page.dart';
import 'package:flutter/material.dart';

import 'package:finnish_survival/config/theme.dart';
import 'package:finnish_survival/extensions.dart';

class _LearnTopicItem extends StatelessWidget {
  const _LearnTopicItem({
    required this.isComplete,
    required this.isFavorite,
    required this.title,
    required this.onFavoriteTap,
    required this.onTap,
  });

  final bool isComplete;
  final bool isFavorite;
  final String title;
  final Function onFavoriteTap;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 16.0.paddingOnlyBottom,
      child: Row(

        children: [
          /// INDICATOR
          Container(
            width: 8.0,
            height: 50.0,
            decoration: BoxDecoration(
              color: isComplete
                  ? AppColors.highlightsDarkest
                  : AppColors.neutralLightMedium,
              borderRadius: BorderRadius.circular(4.0),
            ),
          ),
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
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.neutralLightMedium,
                    ),
                    child: IconButton(
                      onPressed: () {
                        dev.log(name: "LearnItem / Favorite Icon", "Tapped");
                        onFavoriteTap.call();
                      },
                      icon: isFavorite
                          ? const Icon(Icons.favorite_outlined)
                          : const Icon(Icons.favorite_border_outlined),
                      color: AppColors.highlightsDarkest,
                    ),
                  ),
                  16.0.horizontalSpace,

                  /// TITLE
                  Expanded(
                    child: Text(
                      title,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: AppFonts.h4,
                    ),
                  ),
                  16.0.verticalSpace,

                  /// ICON
                  IconButton(
                    onPressed: () {
                      dev.log(name: "LearnItem / Favorite icon", "Tapped");
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


class LearnTopicsList extends StatelessWidget {
  const LearnTopicsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(
              topics.keys.length,
              (index) {
                return _LearnTopicItem(
                  title: topics.keys.elementAt(index),
                  isComplete: Random().nextBool(),
                  isFavorite: Random().nextBool(),
                  onTap: () {
                    dev.log(name: "LearnPage / LearnItem / onTap", "TODO");
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => LearnTopicPage(
                          title: topics.keys.elementAt(index),
                        ),
                      ),
                    );
                  },
                  onFavoriteTap: () {
                    dev.log(
                      name: "LearnPage / LearnItem / onFavoriteTap",
                      "TODO",
                    );
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
