import 'package:finnish_survival/modules/common/common.dart';
import 'package:finnish_survival/modules/exercises/exercises.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopicExercisePageSmall extends GetView<ExercisesPageController> {
  TopicExercisePageSmall({super.key});

  final _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopicExerciseAppBar(),
      backgroundColor: AppColors.neutralLightLightest,
      body: Padding(
        padding: AppPadding.scaffoldPadding,
        child: Column(
          children: [
            const TopicExerciseStepsProgressBar(),
            32.0.verticalSpace,
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TopicExerciseQuestion(),
                  8.0.verticalSpace,

                  // Form
                  Form(
                    key: controller.formKey,
                    child: Column(
                      children: [
                        // Answer input
                        TextFormField(
                          focusNode: _focusNode,
                          decoration: const InputDecoration(
                            hintText: 'Type your answer here',
                          ),
                          validator: (value) {
                            final answer = controller.answerOf(controller.currentExerciseIndex.value!);
                            if (value == null || value.isEmpty) {
                              return 'Please provide an answer';
                            } else if (value.toLowerCase() != answer.toLowerCase()) {
                              return 'Ops. That is not the correct answer. Try again!';
                            }
                            return null;
                          },
                          onFieldSubmitted: (value) {
                            if (controller.formKey.currentState!.validate()) {
                              controller.nextExercise();
                              if (controller.isLastExercise.value) {
                                Get.toNamed('/exercises');
                              } else {
                                _focusNode.requestFocus();
                              }
                            } else {
                              _focusNode.requestFocus();
                            }
                          },
                        ),
                        16.0.verticalSpace,
                      ],
                    ),
                  ),

                  24.0.verticalSpace,
                ],
              ),
            ),
           // const TopicExerciseNextButton(),
            24.0.verticalSpace,
          ],
        ),
      ),
    );
  }
}
