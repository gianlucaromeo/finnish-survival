import 'package:finnish_survival/modules/common/common.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.onBack,
  });

  final String? title;
  final Function? onBack;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.neutralLightLightest,
      scrolledUnderElevation: 0.0,
      leading: onBack != null ? IconButton(
        onPressed: () {
          onBack?.call();
        },
        icon: const Icon(Icons.arrow_back_ios_outlined),
        color: AppColors.highlightsDarkest,
      ) : null,
      title: Text(title ?? '', style: AppFonts.h4),
      centerTitle: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}