import 'dart:developer' as dev;

import 'package:finnish_survival/config/theme.dart';
import 'package:finnish_survival/extensions.dart';
import 'package:finnish_survival/widgets/learn_topics_list.dart';
import 'package:finnish_survival/widgets/app_bar.dart';
import 'package:finnish_survival/widgets/app_bottom_bar.dart';
import 'package:finnish_survival/widgets/filter.dart';
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
              onOpenFilters: () {
                dev.log(name: "LearnPage / Filter", "TODO: Implement");
              },
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