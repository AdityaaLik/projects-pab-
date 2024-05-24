import 'package:flutter/material.dart';
import 'package:uji_proyek_2/utils/constants/colors.dart';
import 'package:uji_proyek_2/utils/constants/image_strings.dart';
import 'package:uji_proyek_2/utils/constants/sizes.dart';
import 'package:uji_proyek_2/utils/helpers/helper_functions.dart';

class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = TColors.white,
    this.backgroundColor = TColors.grey,
    this.onTap,
  });
  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ??
                    (THelperFunctions.isDarkMode(context)
                        ? TColors.black
                        : TColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: const Center(
                child: Image(
                    image: AssetImage(TImages.accousticIcon),
                    fit: BoxFit.cover,
                    color: TColors.white),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Text(
              'Guitar',
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: TColors.white38),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
