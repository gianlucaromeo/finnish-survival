import 'package:finnish_survival/finnish_survival.dart';
import 'package:flutter/material.dart';

class ShowFavoritesFilter extends StatelessWidget {
  const ShowFavoritesFilter({
    super.key,
    required this.showFavorites,
    required this.onChanged,
  });

  final bool showFavorites;
  final Function(bool) onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Switch(
          value: showFavorites,
          onChanged: (value) {
            onChanged(value);
          },
          activeColor: AppColors.highlightsDarkest,
          activeTrackColor: AppColors.highlightsLightest,
          inactiveThumbColor: AppColors.highlightsDarkest,
          inactiveTrackColor: AppColors.neutralLightLightest,
          hoverColor: AppColors.highlightsLightest,
          trackOutlineColor: showFavorites
              ? null
              : WidgetStatePropertyAll<Color>(
                  AppColors.neutralLightDarkest,
                ),
          trackOutlineWidth: showFavorites
              ? null
              : const WidgetStatePropertyAll<double>(
                  1.0,
                ),
        ),
        8.0.horizontalSpace,
        Text("Show favorites", style: AppFonts.bodyM),
      ],
    );
  }
}
