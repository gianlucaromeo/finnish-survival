import 'dart:developer';

import 'package:finnish_survival/config/theme.dart';
import 'package:finnish_survival/controllers/db_controller.dart';
import 'package:finnish_survival/extensions.dart';
import 'package:finnish_survival/models/models.dart';
import 'package:finnish_survival/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

class LearnTopicPage extends GetView<DbController> {
  const LearnTopicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        /// TOP BAR
        appBar: CustomAppBar(
          title: controller.learnTopic.value!.name,
          onBack: () {
            Get.back();
            controller.resetLearnTopic();
          },
        ),

        /// OTHER
        backgroundColor: AppColors.neutralLightLightest,

        /// CONTENT
        body: Padding(
          padding: AppPadding.scaffoldPadding,
          child: Column(
            children: [
              /// STEPS PROGRESS BAR
              Obx(
                () {
                  final currentStep = controller.learnWordIndex.value! + 1;
                  final totalSteps = controller.learnTopic.value!.words.length;
                  return LinearProgressIndicator(
                    value: currentStep / totalSteps,
                    minHeight: 10.0,
                    borderRadius: BorderRadius.circular(10.0),
                    valueColor:
                        AlwaysStoppedAnimation(AppColors.highlightsDarkest),
                    backgroundColor: AppColors.neutralLightMedium,
                  );
                },
              ),
              32.0.verticalSpace,

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Obx(
                      () => Text(
                        controller.learnTopic.value!
                            .words[controller.learnWordIndex.value!].word,
                        style: AppFonts.h1,
                      ),
                    ),
                    8.0.verticalSpace,

                    Flexible(
                      child: SingleChildScrollView(
                        child: Obx(
                          () {
                            final currentTopic = controller.learnTopic.value!;
                            final currentWordIndex =
                                controller.learnWordIndex.value!;
                            final currentWord = currentTopic.words[currentWordIndex];
                            final translations = currentWord.finnishTranslations;

                            return Column(
                              children: [
                                // translations of words
                                ...translations
                                    .map(
                                  (finnishWord) => _LearnTopicItem(
                                    isFavorite: finnishWord.isFavorite,
                                    title: finnishWord.word,
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
                      ),
                    ),
                    16.0.verticalSpace,

                    /// BUTTON: NEXT
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          controller.nextLearnEnglishWord();
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
            ],
          ),
        ),
      ),
    );
  }
}
