import 'package:finnish_survival/modules/common/common.dart';
import 'package:finnish_survival/modules/exercises/exercises.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExercisesPageLarge extends GetView<ExercisesPageController> {
  const ExercisesPageLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: AppColors.neutralLightLightest,
        body: Center(
          child: SizedBox(
            width: 1250.0,
            child: Row(
              children: [
                const AppNavigationRail(),
                Expanded(
                  child: CustomSliverList(
                    title: 'Let\'s practice!',
                    subtitle: Obx(
                      () => ShowFavoritesFilter(
                        showFavorites: controller.showFavorites.value,
                        onChanged: (value) {
                          controller.setShowFavorites(value);
                        },
                      ),
                    ),
                    child: const ExercisesList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
