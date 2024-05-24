import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uji_proyek_2/features/authentication/screeens/login/widgets/password.configuration/reset_password.screen.dart';
import 'package:uji_proyek_2/utils/constants/colors.dart';
import 'package:uji_proyek_2/utils/constants/sizes.dart';
import 'package:uji_proyek_2/utils/constants/text_strings.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Headings
            Text(TTexts.forgotPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(TTexts.forgotPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: TSizes.spaceBtwSections * 2),

            //Text field
            TextFormField(
              decoration: InputDecoration(
                labelText: TTexts.email,
                prefixIcon: const Icon(
                  Iconsax.direct_right,
                  color: TColors.white38,
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: TColors.white38,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: TColors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwSections),
            // Submit Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.off(() => const ResetPassword()),
                    child: const Text(TTexts.submit))),
          ],
        ),
      ),
    );
  }
}
