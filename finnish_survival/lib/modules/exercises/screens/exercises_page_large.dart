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
                      SizedBox(
                        width: 620.0,
                        child: Center(
                          child: Image.asset(
                            'assets/practice.jpg',
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      Text(
                        "Ready to test your Finnish skills?",
                        style: AppFonts.h1,
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
