import 'package:finnish_survival/finnish_survival.dart';
import 'package:flutter/material.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Learn",
      ),
      backgroundColor: AppColors.neutralLightLightest,
      body: Padding(
        padding: AppPadding.scaffoldPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "What do you want to learn today?",
              style: AppFonts.h1,
            ),

            12.0.verticalSpace,
            Filter(
              selected: 0,
              onOpenFilters: () {},
            ),

            24.0.verticalSpace,
            const LearnTopicsList(),
          ],
        ),
      ),

      /// BOTTOM BAR
      bottomNavigationBar: const AppBottomBar(),
    );
  }
}