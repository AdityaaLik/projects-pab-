import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:uji_proyek_2/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:uji_proyek_2/features/authentication/screeens/onboarding/widgets/onboarding_dot.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:uji_proyek_2/features/authentication/screeens/onboarding/widgets/onboarding_dot.dart';
import 'package:uji_proyek_2/features/authentication/screeens/onboarding/widgets/onboarding_nextbutton.dart';
import 'package:uji_proyek_2/features/authentication/screeens/onboarding/widgets/onboarding_page.dart';
import 'package:uji_proyek_2/features/authentication/screeens/onboarding/widgets/onboarding_skip.dart';
// import 'package:uji_proyek_2/utils/constants/colors.dart';
import 'package:uji_proyek_2/utils/constants/image_strings.dart';
// import 'package:uji_proyek_2/utils/constants/sizes.dart';
// import 'package:uji_proyek_2/utils/constants/sizes.dart';
import 'package:uji_proyek_2/utils/constants/text_strings.dart';
// import 'package:uji_proyek_2/utils/device/device_utility.dart';
// import 'package:uji_proyek_2/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
// import 'package:uji_proyek_2/utils/device/device_utility.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // OnBoarding Controller to handle logic
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitlle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitlle3,
              ),
            ],
          ),

          // Skip Button
          const OnBoardingSkip(),

          // Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          //Cincular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
