import 'package:finnish_survival/finnish_survival.dart';
import 'package:flutter/material.dart';

class NoFavorites extends StatelessWidget {
  const NoFavorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: 25.0.paddingAll,
      decoration: BoxDecoration(
        color: AppColors.highlightsLightest,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.heart_broken_rounded,
            color: AppColors.highlightsDarkest,
            size: 24,
          ),
          8.0.horizontalSpace,
          Text(
            'No favorites yet!',
            style: AppFonts.h3.copyWith(
              color: AppColors.highlightsDarkest,
            ),
          ),
        ],
      ),
    );
  }
}
