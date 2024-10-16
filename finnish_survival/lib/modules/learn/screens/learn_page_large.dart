import 'package:finnish_survival/modules/learn/learn.dart';
import 'package:finnish_survival/modules/common/common.dart';
import 'package:flutter/material.dart';

class LearnPageLarge extends StatelessWidget {
  const LearnPageLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutralLightLightest,
      body: Center(
        child: SizedBox(
          width: 1250.0,
          child: Row(
            children: [
              const AppNavigationRail(),

              Expanded(
                child: Padding(
                  padding: AppPadding.scaffoldPadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.height * 0.5,
                        child: Center(
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
            ],
          ),
        ),
      ),
    );
  }
}
