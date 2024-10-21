import 'package:flutter/material.dart';
import 'package:finnish_survival/finnish_survival.dart';

class HoverableTile extends StatefulWidget {
  final String title;
  final bool isFavorite;
  final Function onFavoriteTap;
  final Function onTap;

  const HoverableTile({
    super.key,
    required this.title,
    required this.isFavorite,
    required this.onFavoriteTap,
    required this.onTap,
  });

  @override
  State<HoverableTile> createState() => _HoverableTileState();
}

class _HoverableTileState extends State<HoverableTile> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() {
        _isHovering = true;
      }),
      onExit: (_) => setState(() {
        _isHovering = false;
      }),
      child: InkWell(
        onTap: () => widget.onTap(),
        borderRadius: BorderRadius.circular(16.0),
        child: Container(
          decoration: BoxDecoration(
            color: _isHovering
                ? AppColors.neutralLightLightest
                : AppColors.neutralLightLight,
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(
              color: _isHovering
                  ? AppColors.highlightsDarkest
                  : AppColors.neutralLightLight,
              width: 2.0,
            ),
          ),
          padding: 16.0.paddingAll,
          child: Row(
            children: [
              /// ICON
              FavoriteIconButton(
                isFavorite: widget.isFavorite,
                onFavoriteTap: widget.onFavoriteTap,
              ),
              16.0.horizontalSpace,

              /// TITLE
              Expanded(
                child: Text(
                  widget.title,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: _isHovering ? AppFonts.h3 : AppFonts.h4,
                ),
              ),
              16.0.horizontalSpace,

              /// ICON
              Icon(
                Icons.keyboard_arrow_right_outlined,
                color: AppColors.highlightsDarkest,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
