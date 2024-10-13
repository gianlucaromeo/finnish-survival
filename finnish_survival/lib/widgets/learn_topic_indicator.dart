import 'package:finnish_survival/finnish_survival.dart';
import 'package:flutter/material.dart';

class LearnTopicIndicator extends StatelessWidget {
  const LearnTopicIndicator({
    super.key,
    required this.topic,
  });

  final Topic topic;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: topic.isComplete
            ? AppColors.highlightsDarkest
            : AppColors.neutralLightMedium,
        borderRadius: BorderRadius.circular(4.0),
      ),
    );
  }
}
