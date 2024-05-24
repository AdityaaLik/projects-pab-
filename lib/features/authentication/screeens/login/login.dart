import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';
import 'package:uji_proyek_2/common/styles/spacing_styles.dart';
import 'package:uji_proyek_2/common/widgets/login_signup/form_divider.dart';
import 'package:uji_proyek_2/common/widgets/login_signup/social_button.dart';
import 'package:uji_proyek_2/features/authentication/screeens/login/widgets/login_form.dart';
import 'package:uji_proyek_2/features/authentication/screeens/login/widgets/login_header.dart';
// import 'package:uji_proyek_2/utils/constants/colors.dart';
// import 'package:uji_proyek_2/utils/constants/image_strings.dart';
import 'package:uji_proyek_2/utils/constants/sizes.dart';
import 'package:uji_proyek_2/utils/constants/text_strings.dart';
// import 'package:uji_proyek_2/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              const TLoginHeader(),

              //Form
              TLoginForm(),
              //Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwItems),
              //Footer
              const TSocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
