import 'package:finnish_survival/finnish_survival.dart';
import 'package:flutter/material.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// TOP BAR
      appBar: const CustomAppBar(
        title: "Learn",
      ),

      /// OTHER
      backgroundColor: AppColors.neutralLightLightest,

      /// CONTENT
      body: Padding(
        padding: AppPadding.scaffoldPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// TITLE
            Text(
              "What do you want to learn today?",
              style: AppFonts.h1,
            ),

            AppSpace.verticalRegular,

            /// FILTER
            Filter(
              selected: 0,
              onOpenFilters: () {},
            ),
            24.0.verticalSpace,

            /// LIST
            const LearnTopicsList(),
          ],
        ),
      ),

      /// BOTTOM BAR
      bottomNavigationBar: const AppBottomBar(),
    );
  }
}