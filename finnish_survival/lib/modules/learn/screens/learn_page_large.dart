import 'package:finnish_survival/modules/learn/learn.dart';
import 'package:finnish_survival/modules/common/common.dart';
import 'package:flutter/material.dart';

class LearnPageLarge extends StatelessWidget {
  const LearnPageLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutralLightLightest,
      body: SizedBox(
        width: 1250.0,
        child: Row(
          children: [
            const AppNavigationRail(),
            Expanded(
              child: const CustomSliverList(
                title: 'What do you want to learn?',
                child: LearnTopicsList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
