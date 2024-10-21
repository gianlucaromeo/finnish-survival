import 'package:finnish_survival/finnish_survival.dart';
import 'package:flutter/material.dart';

class LearnPageSmall extends StatelessWidget {
  const LearnPageSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutralLightLightest,
      body: const SafeArea(
        child: CustomSliverList(
          title: 'What do you want to learn?',
          child: LearnTopicsList(),
        ),
      ),
      bottomNavigationBar: const AppBottomBar(),
    );
  }
}
