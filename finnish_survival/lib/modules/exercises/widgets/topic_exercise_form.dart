import 'package:finnish_survival/modules/common/common.dart';
import 'package:finnish_survival/modules/exercises/exercises.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopicExerciseForm extends GetView<ExercisesPageController> {
  TopicExerciseForm({
    super.key,
  });

  final _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    _focusNode.requestFocus();
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          // Answer input
          TextFormField(
            focusNode: _focusNode,
            decoration: InputDecoration(
              hintText: 'Type your answer here',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide(
                  width: 1.0,
                  color: AppColors.neutralLightDarkest,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide(
                  width: 1.0,
                  color: AppColors.highlightsDarkest,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide(
                  width: 1.0,
                  color: AppColors.error,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide(
                  width: 1.0,
                  color: AppColors.error,
                ),
              ),
            ),
            style: AppFonts.bodyM,
            validator: (value) {
              final answer = controller.answerOf(controller.currentExerciseIndex.value);
              if (value == null || value.isEmpty) {
                return 'Please provide an answer';
              } else if (value.toLowerCase() != answer.toLowerCase()) {
                return 'Ops. That is not the correct answer. Try again!';
              }
              return null;
            },
            onFieldSubmitted: (value) {
              if (controller.formKey.currentState!.validate()) {
                if (controller.isLastExercise.value) {
                  controller.resetExercises();
                  Get.find<NavigationController>().setCurrentIndex(1);
                } else {
                  controller.nextExercise();
                }
              }
              _focusNode.requestFocus();
            },
          ),
          16.0.verticalSpace,
        ],
      ),
    );
  }
}
