import 'package:finnish_survival/finnish_survival.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LearnPageSmall extends GetView<LearnPageController> {
  const LearnPageSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutralLightLightest,
      body: SafeArea(
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
      bottomNavigationBar: const AppBottomBar(),
    );
  }
}
