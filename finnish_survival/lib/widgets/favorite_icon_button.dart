import 'package:finnish_survival/finnish_survival.dart';
import 'package:flutter/material.dart';

class FavoriteIconButton extends StatelessWidget {
  const FavoriteIconButton({
    super.key,
    required this.isFavorite,
    required this.onFavoriteTap,
  });

  final bool isFavorite;
  final Function onFavoriteTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.neutralLightMedium,
      ),
      child: IconButton(
        onPressed: () {
          onFavoriteTap.call();
        },
        icon: isFavorite
            ? const Icon(Icons.favorite_outlined)
            : const Icon(Icons.favorite_border_outlined),
        color: AppColors.highlightsDarkest,
      ),
    );
  }
}
