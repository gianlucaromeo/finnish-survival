import 'package:finnish_survival/modules/common/common.dart';
import 'package:finnish_survival/modules/exercises/exercises.dart';
import 'package:flutter/material.dart';

class ExercisesPageLarge extends StatelessWidget {
  const ExercisesPageLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutralLightLightest,
      body: Center(
        child: SizedBox(
          width: 1250.0,
          child: Row(
            children: [
              const AppNavigationRail(),

              Expanded(
                child: Padding(
                  padding: AppPadding.scaffoldPadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Ready to test your Finnish skills?",
                        style: AppFonts.h1,
                      ),

                      12.0.verticalSpace,
                      Filter(
                        selected: 0,
                        onOpenFilters: () {},
                      ),

                      24.0.verticalSpace,
                      const Expanded(child: ExercisesList()),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
