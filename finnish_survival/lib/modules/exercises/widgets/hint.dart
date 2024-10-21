import 'package:flutter/material.dart';
import 'package:finnish_survival/finnish_survival.dart';
import 'package:get/get.dart';

class Hint extends GetView<ExercisesPageController> {
  const Hint({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (controller.askedForHint.value)
            const _HintsList(),

          if (controller.hintCounter < 3)
            16.0.verticalSpace,

          if (controller.hintCounter < 3)
            TextButton.icon(
              onPressed: () {
                controller.incrementHintCounter();
              },
              icon: const Icon(Icons.lightbulb_outline_rounded),
              label: Text('Hint (${3 - controller.hintCounter.value} left)'),
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: const Size(0, 0),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                overlayColor: Colors.transparent,
                iconColor: AppColors.highlightsDarkest,
                foregroundColor: AppColors.highlightsDarkest,
              ),
            ),
        ],
      ),
    );
  }
}

class _HintsList extends GetView<ExercisesPageController> {
  const _HintsList();

  @override
  Widget build(BuildContext context) {
    final solution = controller.currentSolution;

    final firstAndLastLettersHint =
        'Starts with "${solution[0]}" and ends with "${solution[solution.length - 1]}"';
    final wordLengthHint = '${solution.length} letters';
    final entireWordHint = 'The answer is "$solution"';
    final hints = [firstAndLastLettersHint, wordLengthHint, entireWordHint];

    return Obx(
      () => Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.highlightsLightest,
          borderRadius: BorderRadius.circular(4 * controller.hintCounter.toDouble()),
        ),
        padding: 16.0.paddingAll,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...List.generate(controller.hintCounter.value, (index) {
              return Padding(
                padding: index == controller.hintCounter.value - 1
                    ? EdgeInsets.zero
                    : 8.0.paddingOnlyBottom,
                child: Row(
                  children: [
                    Icon(
                      Icons.circle,
                      color: AppColors.highlightsDarkest,
                      size: 8.0,
                    ),
                    8.0.horizontalSpace,
                    Expanded(
                      child: Text(
                        hints[index],
                        style: AppFonts.h5,
                      ),
                    )
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
