import 'package:finnish_survival/modules/common/common.dart';
import 'package:flutter/material.dart';

class StatusIndicator extends StatelessWidget {
  const StatusIndicator({
    super.key,
    required this.isComplete,
  });

  final bool isComplete;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: isComplete
            ? AppColors.highlightsDarkest
            : AppColors.neutralLightMedium,
        borderRadius: BorderRadius.circular(4.0),
      ),
    );
  }
}
