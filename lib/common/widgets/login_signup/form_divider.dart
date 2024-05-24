import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uji_proyek_2/utils/constants/colors.dart';
import 'package:uji_proyek_2/utils/constants/text_strings.dart';
import 'package:uji_proyek_2/utils/helpers/helper_functions.dart';

class TFormDivider extends StatelessWidget {
  const TFormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
                color: dark ? TColors.white38 : TColors.white,
                thickness: 0.5,
                indent: 60,
                endIndent: 5)),
        Text(TTexts.orSignInWith.capitalize!,
            style: Theme.of(context).textTheme.labelMedium),
        Flexible(
            child: Divider(
                color: dark ? TColors.white38 : TColors.white,
                thickness: 0.5,
                indent: 5,
                endIndent: 60)),
      ],
    );
  }
}
