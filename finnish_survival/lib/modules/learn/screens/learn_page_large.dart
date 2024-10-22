import 'package:finnish_survival/finnish_survival.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LearnPageLarge extends GetView<LearnPageController> {
  const LearnPageLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutralLightLightest,
      body: SizedBox(
        width: 1250.0,
        child: Row(
          children: [
            const AppNavigationRail(),
            Expanded(
              child: CustomSliverList(
                title: 'What do you want to learn?',
                subtitle: Obx(
                  () => ShowFavoritesFilter(
                    showFavorites: controller.showFavorites.value,
                    onChanged: (value) {
                      controller.setShowFavorites(value);
                    },
                  ),
                ),
                child: const LearnTopicsList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
