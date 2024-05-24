import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uji_proyek_2/common/widgets/custom_shapes_container/container/rounded_container/rounded_container.dart';
import 'package:uji_proyek_2/common/widgets/custom_shapes_container/container/rounded_image/rounded_image.dart';
import 'package:uji_proyek_2/common/widgets/icons/t_circular_icon.dart';
import 'package:uji_proyek_2/common/widgets/product/style/shadows.dart';
import 'package:uji_proyek_2/common/widgets/texts/product_title_text.dart';
import 'package:uji_proyek_2/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:uji_proyek_2/utils/constants/colors.dart';
import 'package:uji_proyek_2/utils/constants/image_strings.dart';
import 'package:uji_proyek_2/utils/constants/sizes.dart';
import 'package:uji_proyek_2/utils/helpers/helper_functions.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    // Container with side paddings, color, edges, radius and shadow
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.white : TColors.darkGrey,
        ),
        child: Column(
          children: [
            //Thumnail, wishlist Button, Discount Tag
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.light : TColors.light,
              child: Stack(
                children: [
                  //-- Thumbnail Images
                  const TRoundedImage(
                      imageUrl: TImages.productSale1, applyImageRadius: true),

                  // sale Tag
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text('25%',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .apply(color: TColors.black)),
                    ),
                  ),

                  const Positioned(
                    top: 0,
                    right: 0,
                    child:
                        TCircularIcon(icon: Iconsax.heart5, color: Colors.red),
                  ),
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            // Details
            Padding(
                padding: const EdgeInsets.only(left: TSizes.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TProductTitleText(
                        title: 'Guitar Yamaha L Series', smallSize: true),
                    const SizedBox(height: TSizes.spaceBtwItems / 2),
                    const TBrandTitleWithVerifiedIcon(title: 'Yamaha'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //price
                        Padding(
                          padding: const EdgeInsets.only(left: TSizes.sm),
                          child: Text(
                            'Rp. 9,975.000',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ),
                      ],
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
