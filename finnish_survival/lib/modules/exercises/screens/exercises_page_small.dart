import 'package:finnish_survival/modules/common/common.dart';
import 'package:finnish_survival/modules/exercises/exercises.dart';
import 'package:flutter/material.dart';

class ExercisesPageSmall extends StatelessWidget {
  const ExercisesPageSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutralLightLightest,
      body: SafeArea(
        child: Padding(
          padding: AppPadding.scaffoldPadding,
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  width: 620.0,
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
              const Expanded(
                child: ExercisesList(),
              ),
            ],
          ),
        ),
      ),

      /// BOTTOM BAR
      bottomNavigationBar: const AppBottomBar(),
    );
  }
}