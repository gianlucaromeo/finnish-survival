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
    final isSmallScreen = MediaQuery.sizeOf(context).width < 600;
    final radius = isSmallScreen ? 12.0 : 16.0;

    if (isComplete) {
      return CircleAvatar(
        radius: radius,
        backgroundColor: AppColors.highlightsDarkest,
        child: Icon(
          Icons.check_outlined,
          color: AppColors.neutralLightLightest,
          size: radius,
        ),
      );
    }

    return CircleAvatar(
      backgroundColor: AppColors.neutralLightLight,
      radius: radius,
    );
  }
}
