import 'package:finnish_survival/modules/common/common.dart';
import 'package:finnish_survival/modules/exercises/exercises.dart';
import 'package:flutter/material.dart';

class ExercisesPageSmall extends StatelessWidget {
  const ExercisesPageSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: AppColors.neutralLightLightest,
        body: const SafeArea(
          child: CustomSliverList(
            title: 'Let\'s practice!',
            child: ExercisesList(),
          ),
        ),
        bottomNavigationBar: const AppBottomBar(),
      ),
    );
  }
}