import 'package:finnish_survival/config/theme.dart';
import 'package:finnish_survival/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class LearnTopicPage extends StatelessWidget {
  const LearnTopicPage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// TOP BAR
      appBar: CustomAppBar(
        title: title,
      ),

      /// OTHER
      backgroundColor: AppColors.neutralLightLightest,

      /// CONTENT
      body: Padding(
        padding: AppPadding.scaffoldPadding,
        child: Column(
          children: [
            /// STEPS PROGRESS BAR
            LinearProgressIndicator(
              value: 0.5,
              minHeight: 10.0,
              borderRadius: BorderRadius.circular(10.0),
              valueColor: AlwaysStoppedAnimation(AppColors.highlightsDarkest),
              backgroundColor: AppColors.neutralLightMedium,
            ),

          ],
        ),
      ),
    );
  }
}
