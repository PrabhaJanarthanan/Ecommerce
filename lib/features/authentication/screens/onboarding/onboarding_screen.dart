import 'package:ecommerce/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_nextbutton.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          //scrollablepages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: PRImages.onBoardingImage1,
                title: PRTexts.onBoardingTitle1,
                subTitle: PRTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: PRImages.onBoardingImage2,
                title: PRTexts.onBoardingTitle2,
                subTitle: PRTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: PRImages.onBoardingImage3,
                title: PRTexts.onBoardingTitle3,
                subTitle: PRTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          //skipbutton
          OnBoardingSkip(),

          //pageindicator
          OnBoardingDotNavigation(),

          //circularbutton
          OnBoardingNextButton(),
        ],
      ),
    );
  }
}
