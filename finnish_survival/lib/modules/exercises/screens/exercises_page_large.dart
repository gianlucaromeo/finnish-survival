import 'package:finnish_survival/modules/common/common.dart';
import 'package:finnish_survival/modules/exercises/exercises.dart';
import 'package:flutter/material.dart';

class ExercisesPageLarge extends StatelessWidget {
  const ExercisesPageLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: AppColors.neutralLightLightest,
        body: const Center(
          child: SizedBox(
            width: 1250.0,
            child: Row(
              children: [
                AppNavigationRail(),
                Expanded(
                  child: CustomSliverList(
                    title: 'Ready to test your Finnish skills?',
                    child: ExercisesList(),
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
