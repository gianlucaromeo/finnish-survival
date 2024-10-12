import 'dart:developer';

import 'package:finnish_survival/config/theme.dart';
import 'package:finnish_survival/extensions.dart';
import 'package:finnish_survival/models.dart';
import 'package:finnish_survival/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class _LearnTopicItem extends StatelessWidget {
  const _LearnTopicItem({
    required this.isFavorite,
    required this.title,
    required this.onFavoriteTap,
  });

  final bool isFavorite;
  final String title;
  final Function onFavoriteTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 16.0.paddingOnlyBottom,
      child: Row(
        children: [
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
                        log(name: "LearnItem / Favorite Icon", "Tapped");
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LearnTopicPage extends StatefulWidget {
  const LearnTopicPage({
    super.key,
    required this.topic,
  });

  final Topic topic;

  @override
  State<LearnTopicPage> createState() => _LearnTopicPageState();
}

class _LearnTopicPageState extends State<LearnTopicPage> {
  int _currentStep = 0;

  late int totalSteps = 0;

  @override
  void initState() {
    super.initState();
    totalSteps = widget.topic.words.length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// TOP BAR
      appBar: CustomAppBar(
        title: widget.topic.name,
      ),

      /// OTHER
      backgroundColor: AppColors.neutralLightLightest,

      /// CONTENT
      body: Padding(
        padding: AppPadding.scaffoldPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// STEPS PROGRESS BAR
            LinearProgressIndicator(
              value: (_currentStep + 1) / totalSteps,
              minHeight: 10.0,
              borderRadius: BorderRadius.circular(10.0),
              valueColor: AlwaysStoppedAnimation(AppColors.highlightsDarkest),
              backgroundColor: AppColors.neutralLightMedium,
            ),
            32.0.verticalSpace,

            Text(widget.topic.words[_currentStep].word, style: AppFonts.h1),
            8.0.verticalSpace,

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // translations of words
                    ...widget.topic.words[_currentStep].finnishTranslations.map(
                      (word) => _LearnTopicItem(
                        isFavorite: word.isFavorite,
                        title: word.word,
                        onFavoriteTap: () {
                          log(name: "LearnItem / Favorite icon", "Tapped");
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),

            /// BUTTON: NEXT
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _currentStep++;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.highlightsDarkest,
                  padding: 16.0.paddingAll,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                child: Text(
                  "Next",
                  style: AppFonts.h4.copyWith(
                    color: AppColors.neutralLightLightest,
                  ),
                ),
              ),
            ),
            24.0.verticalSpace,
          ],
        ),
      ),
    );
  }
}
