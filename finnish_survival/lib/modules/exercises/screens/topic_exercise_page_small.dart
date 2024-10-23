import 'package:finnish_survival/modules/common/common.dart';
import 'package:finnish_survival/modules/exercises/exercises.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopicExercisePageSmall extends GetView<ExercisesPageController> {
  const TopicExercisePageSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: const TopicExerciseAppBar(),
        backgroundColor: AppColors.neutralLightLightest,
        body: Padding(
          padding: AppPadding.scaffoldPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const TopicExerciseStepsProgressBar(),
              32.0.verticalSpace,
              Expanded(
                child: SingleChildScrollView(
                  reverse: true,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Hint(),
                      16.0.verticalSpace,
                      const TopicExerciseQuestion(),
                      16.0.verticalSpace,
                      const TopicExerciseForm(),
                      24.0.verticalSpace,
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
