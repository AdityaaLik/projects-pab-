import 'package:flutter/material.dart';

import 'package:uji_proyek_2/common/widgets/appbar/home_appbar.dart';
import 'package:uji_proyek_2/common/widgets/appbar/home_categories.dart';
import 'package:uji_proyek_2/common/widgets/appbar/promo_slider.dart';

import 'package:uji_proyek_2/common/widgets/custom_shapes_container/container/primary_header_container.dart';
import 'package:uji_proyek_2/common/widgets/custom_shapes_container/container/search_container.dart';
import 'package:uji_proyek_2/common/widgets/custom_shapes_container/container/section_heading.dart';
import 'package:uji_proyek_2/common/widgets/layouts/grid_layout.dart';
import 'package:uji_proyek_2/common/widgets/product/product_cart_vertical.dart';
import 'package:uji_proyek_2/utils/constants/image_strings.dart';

// import 'package:uji_proyek_2/utils/constants/image_strings.dart';
import 'package:uji_proyek_2/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  // --App Bar
                  const THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  // SizedBox(height: TSizes.spaceBtwSections),
                  const TSearchContainer(
                    text: 'search in store',
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        const TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems),

                        //Categories
                        const THomeCategories(),
                        // -- Search Bar
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  //-- Promo Slider
                  const TPromoSlider(banners: [
                    TImages.promoBanner1,
                    TImages.promoBanner2,
                    TImages.promoBanner3
                  ]),

                  const SizedBox(height: TSizes.spaceBtwSections),

                  // -- Heading
                  TSectionHeading(title: 'Popular Products', onPressed: () {}),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  //-- Popular Product
                  TGridLayout(
                      itemCount: 4,
                      itemBuilder: (_, index) => const TProductCardVertical()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
