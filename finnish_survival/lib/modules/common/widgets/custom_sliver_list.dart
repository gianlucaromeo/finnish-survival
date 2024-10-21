import 'package:finnish_survival/finnish_survival.dart';
import 'package:flutter/material.dart';

class CustomSliverList extends StatelessWidget {
  const CustomSliverList({
    super.key,
    required this.title,
    required this.child,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 140.0,
          collapsedHeight: 80.0,
          floating: false,
          pinned: true,
          backgroundColor: AppColors.neutralLightLightest,
          surfaceTintColor: AppColors.neutralLightLightest,
          flexibleSpace: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              final appBarHeight = constraints.biggest.height;
              final titleFontSize = appBarHeight > 120
                  ? AppFonts.h1.fontSize
                  : AppFonts.h2.fontSize;
              final titleFontColor = AppColors.neutralDarkDarkest;

              return FlexibleSpaceBar(
                titlePadding: 20.0.paddingAll,
                centerTitle: false,
                title: Text(
                  title,
                  style: AppFonts.h1.copyWith(
                    fontSize: titleFontSize,
                    color: titleFontColor,
                  ),
                ),
              );
            },
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: AppPadding.scaffoldPadding,
            child: child,
          ),
        ),
      ],
    );
  }
}
