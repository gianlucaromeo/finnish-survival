import 'package:finnish_survival/modules/learn/learn.dart';
import 'package:finnish_survival/modules/common/common.dart';
import 'package:flutter/material.dart';

class LearnPageSmall extends StatelessWidget {
  const LearnPageSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutralLightLightest,
      body: SafeArea(
        child: Padding(
          padding: AppPadding.scaffoldPadding,
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  width: 520.0,
                  child: Image.asset(
                    'assets/learn.jpg',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Text(
                "What do you want to learn today?",
                style: AppFonts.h1,
              ),

              24.0.verticalSpace,
              const Expanded(child: LearnTopicsList()),
            ],
          ),
        ),
      ),

      /// BOTTOM BAR
      bottomNavigationBar: const AppBottomBar(),
    );
  }
}