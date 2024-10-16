import 'package:finnish_survival/modules/common/common.dart';
import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  const Filter({
    super.key,
    required this.selected,
    required this.onOpenFilters,
  });

  final int selected;
  final Function onOpenFilters;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onOpenFilters.call();
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: AppColors.neutralLightDarkest),
        ),
        padding: 12.0.paddingAll,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// FILTER ICON
            Icon(
              Icons.filter_list_outlined,
              color: AppColors.neutralDarkLightest,
            ),
            8.0.horizontalSpace,

            /// FILTER TITLE
            Text("Filter", style: AppFonts.bodyS),
            12.0.horizontalSpace,

            /// FILTERS NUMBERS OR ARROW
            Container(
              decoration: selected > 0 ? BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.highlightsDarkest,
              ) : null,
              padding: selected > 0 ? 6.0.paddingAll : 0.0.paddingAll,
              child: selected > 0 ? Text(
                selected.toString(),
                style: AppFonts.captionM.apply(
                  color: AppColors.neutralLightLightest,
                ),
              ) : Icon(Icons.keyboard_arrow_down_outlined, color: AppColors.neutralLightDarkest,),
            ),
          ],
        ),
      ),
    );
  }
}
