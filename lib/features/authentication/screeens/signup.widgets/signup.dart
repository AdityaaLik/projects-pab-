import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';
import 'package:uji_proyek_2/common/widgets/login_signup/form_divider.dart';
import 'package:uji_proyek_2/common/widgets/login_signup/social_button.dart';
import 'package:uji_proyek_2/features/authentication/screeens/signup.widgets/signup_form.dart';
// import 'package:uji_proyek_2/utils/constants/colors.dart';
import 'package:uji_proyek_2/utils/constants/sizes.dart';
import 'package:uji_proyek_2/utils/constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(TTexts.signUpTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections),

              //Form
              const TSignUpForm(),

              const SizedBox(height: TSizes.spaceBtwSections),
              // Divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Social Buttons
              const TSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
