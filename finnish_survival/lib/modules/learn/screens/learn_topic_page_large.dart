import 'package:finnish_survival/modules/learn/learn.dart';
import 'package:finnish_survival/modules/common/common.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LearnTopicPageLarge extends GetView<LearnPageController> {
  const LearnTopicPageLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: const LearnTopicAppBar(),
        backgroundColor: AppColors.neutralLightLightest,
        body: Padding(
          padding: AppPadding.scaffoldPadding,
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 600,
                    child: LearnTopicStepsProgressBar(),
                  ),
                  64.0.verticalSpace,
                  Flexible(
                    child: SizedBox(
                      width: 650.0,
                      height: 400.0,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                  ),
                  64.0.verticalSpace,
                  const SizedBox(
                      width: 350.0,
                      height: 50.0,
                      child: LearnTopicNextWordButton()),
                  24.0.verticalSpace,
                ]),
          ),
        ),
      ),
    );
  }
}
