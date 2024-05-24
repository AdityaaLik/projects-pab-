import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:uji_proyek_2/utils/constants/sizes.dart';
import 'package:uji_proyek_2/utils/device/device_utility.dart';
import 'package:uji_proyek_2/features/authentication/controllers.onboarding/onboarding_controller.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(
          count: 3,
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          effect:
              const ExpandingDotsEffect(dotColor: Colors.white, dotHeight: 6),
        ));
  }
}
