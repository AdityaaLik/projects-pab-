import 'package:flutter/material.dart';
import 'package:uji_proyek_2/utils/constants/colors.dart';
import 'package:uji_proyek_2/utils/constants/sizes.dart';
import 'package:uji_proyek_2/utils/constants/text_strings.dart';

class TTermsAndConditonCheckBox extends StatelessWidget {
  const TTermsAndConditonCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(width: TSizes.spaceBtwItems),
        Text.rich(
          TextSpan(children: [
            TextSpan(
                text: '${TTexts.iAgreeTo} ',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .apply(color: TColors.darkGrey)),
            TextSpan(
                text: '${TTexts.privacyPolicy} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: TColors.primary,
                    )),
            TextSpan(
                text: '${TTexts.and} ',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .apply(color: TColors.darkGrey)),
            TextSpan(
                text: TTexts.termOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: TColors.primary,
                    )),
          ]),
        ),
      ],
    );
  }
}
