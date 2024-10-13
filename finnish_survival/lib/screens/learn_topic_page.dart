import 'package:finnish_survival/finnish_survival.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LearnTopicPage extends GetView<DbController> {
  const LearnTopicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: const LearnTopicAppBar(),
        backgroundColor: AppColors.neutralLightLightest,
        body: Padding(
          padding: AppPadding.scaffoldPadding,
          child: Column(
            children: [
              const LearnTopicStepsProgressBar(),
              32.0.verticalSpace,

              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const LearnTopicWordTitle(),
                    8.0.verticalSpace,

                    const Flexible(
                      child: LearnTopicFinnishWords(),
                    ),
                    24.0.verticalSpace,
                  ],
                ),
              ),

              const LearnTopicNextWordButton(),
              24.0.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
