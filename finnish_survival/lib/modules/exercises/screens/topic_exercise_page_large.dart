import 'package:finnish_survival/modules/common/common.dart';
import 'package:finnish_survival/modules/exercises/exercises.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopicExercisePageLarge extends GetView<ExercisesPageController> {
  const TopicExercisePageLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: const TopicExerciseAppBar(),
        backgroundColor: AppColors.neutralLightLightest,
        body: Padding(
          padding: AppPadding.scaffoldPadding,
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  width: 600.0,
                  child: TopicExerciseStepsProgressBar(),
                ),
                64.0.verticalSpace,
                Flexible(
                  child: SizedBox(
                    width: 600.0,
                    height: 400.0,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
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
                // const TopicExerciseNextButton(),
                24.0.verticalSpace,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
