import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uji_proyek_2/features/authentication/screeens/login/widgets/password.configuration/forgot_password.dart';
import 'package:uji_proyek_2/features/authentication/screeens/signup.widgets/signup.dart';
import 'package:uji_proyek_2/navigation_menu.dart';
import 'package:uji_proyek_2/utils/constants/colors.dart';
import 'package:uji_proyek_2/utils/constants/sizes.dart';
import 'package:uji_proyek_2/utils/constants/text_strings.dart';

class TLoginForm extends StatefulWidget {
  @override
  TLoginFormState createState() {
    return TLoginFormState();
  }
}

class TLoginFormState extends State<TLoginForm> {
  bool passwordVisible = true;

  void toggle() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            //email
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Email';
                }
                return null;
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.direct_right),
                labelText: TTexts.email,
                hintText: 'Enter Email',
                hintStyle: const TextStyle(
                  color: TColors.darkGrey,
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: TColors.darkGrey,
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
            const SizedBox(height: TSizes.spaceBtwInputFields),
            //password
            TextFormField(
              obscureText: true,
              obscuringCharacter: '*',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Password';
                }
                return null;
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.password_check),
                labelText: TTexts.password,
                suffixIcon: const Icon(Iconsax.eye_slash),
                hintText: 'Enter Password',
                hintStyle: const TextStyle(
                  color: TColors.darkGrey,
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: TColors.darkGrey,
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
            const SizedBox(height: TSizes.spaceBtwInputFields / 2),

            //Remember Me & Forgot Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(
                      TTexts.rememberMe,
                    ),
                  ],
                ),

                //Forgot Password
                TextButton(
                    onPressed: () => Get.to(() => const ForgotPassword()),
                    child: const Text(
                      TTexts.forgotPassword,
                      style: TextStyle(color: TColors.white),
                    )),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            //Sign in Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => const NavigationMenu()),
                    child: const Text(TTexts.signIn))),
            const SizedBox(height: TSizes.spaceBtwItems),
            //create account button
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () => Get.to(() => const SignUpScreen()),
                    child: const Text(
                      TTexts.createdAccount,
                    ))),
            const SizedBox(height: TSizes.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}
