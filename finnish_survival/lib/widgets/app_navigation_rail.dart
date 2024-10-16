import 'package:finnish_survival/finnish_survival.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppNavigationRail extends GetView<NavigationController> {
  const AppNavigationRail({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: controller.currentIndex,
      onDestinationSelected: controller.setCurrentIndex,
      extended: true,
      backgroundColor: AppColors.neutralLightLight,
      selectedLabelTextStyle: AppFonts.bodyL.copyWith(
        color: AppColors.highlightsDarkest,
      ),
      selectedIconTheme: IconThemeData(
        color: AppColors.neutralLightLightest,
      ),
      unselectedLabelTextStyle: AppFonts.bodyL.copyWith(
        color: AppColors.neutralLightDarkest,
      ),
      unselectedIconTheme: IconThemeData(
        color: AppColors.neutralLightDarkest,
      ),
      indicatorColor: AppColors.highlightsDarkest,
      groupAlignment: -0.8,
      indicatorShape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      destinations:  [
        NavigationRailDestination(
          icon: const Icon(Icons.library_books),
          selectedIcon: const Icon(Icons.library_books),
          label: const Text('Learn'),
          padding: 20.0.paddingOnlyLeft,
        ),
        NavigationRailDestination(
          icon: const Icon(Icons.edit_outlined),
          selectedIcon: const Icon(Icons.edit_outlined),
          label: const Text('Practice'),
          padding: 20.0.paddingOnlyLeft,
        ),
        NavigationRailDestination(
          icon: const Icon(Icons.settings_outlined),
          selectedIcon: const Icon(Icons.settings_outlined),
          label: const Text('Settings'),
          padding: 20.0.paddingOnlyLeft,
        ),
      ],
    );
  }
}
