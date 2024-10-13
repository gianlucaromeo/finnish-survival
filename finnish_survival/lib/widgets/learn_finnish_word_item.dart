import 'package:flutter/material.dart';
import 'package:finnish_survival/finnish_survival.dart';

class LearnFinnishWordItem extends StatelessWidget {
  const LearnFinnishWordItem({
    super.key,
    required this.finnishWord,
    required this.onFavoriteTap,
  });

  final FinnishWord finnishWord;
  final Function onFavoriteTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 16.0.paddingOnlyBottom,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.neutralLightLight,
          borderRadius: BorderRadius.circular(16.0),
        ),
        padding: 16.0.paddingAll,
        child: Row(
          children: [
            /// ICON
            FavoriteIconButton(
              isFavorite: finnishWord.isFavorite,
              onFavoriteTap: () {
                onFavoriteTap.call();
              },
            ),
            16.0.horizontalSpace,

            /// TITLE
            Expanded(
              child: Text(
                finnishWord.word,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: AppFonts.h4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}