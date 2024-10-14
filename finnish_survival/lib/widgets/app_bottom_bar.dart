import 'package:finnish_survival/finnish_survival.dart';
import 'package:flutter/material.dart';

class AppBottomBar extends StatelessWidget {
  const AppBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColors.neutralLightLightest,
      elevation: 0.0,
      /// SELECTED
      selectedIconTheme: IconThemeData(color: AppColors.highlightsDarkest),
      selectedLabelStyle: AppFonts.actionS,
      selectedItemColor: AppColors.neutralDarkDarkest,
      /// UNSELECTED
      unselectedIconTheme: IconThemeData(color: AppColors.neutralLightDark),
      unselectedLabelStyle: AppFonts.bodyXS,
      unselectedItemColor: AppColors.neutralDarkLight,
      items: const [
        BottomNavigationBarItem(
          icon: SizedBox(child: Icon(Icons.library_books)),
          label: "Learn",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.edit_outlined),
          label: "Practice",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_outlined),
          label: "Settings",
        ),
      ],
    );
  }
}