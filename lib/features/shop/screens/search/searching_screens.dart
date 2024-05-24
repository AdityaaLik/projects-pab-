import 'package:flutter/material.dart';
import 'package:uji_proyek_2/common/widgets/appbar/appbar.dart';
import 'package:uji_proyek_2/common/widgets/custom_shapes_container/container/rounded_container/rounded_container.dart';
import 'package:uji_proyek_2/common/widgets/custom_shapes_container/container/search_container.dart';
import 'package:uji_proyek_2/common/widgets/custom_shapes_container/container/section_heading.dart';
import 'package:uji_proyek_2/common/widgets/images/circular_image.dart';
import 'package:uji_proyek_2/common/widgets/layouts/grid_layout.dart';
import 'package:uji_proyek_2/common/widgets/product.cart/card_menu.dart';
import 'package:uji_proyek_2/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:uji_proyek_2/utils/constants/enums.dart';
import 'package:uji_proyek_2/utils/constants/image_strings.dart';
import 'package:uji_proyek_2/utils/constants/sizes.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Shop', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          TCartCounterIcon(onPressed: () {}),
        ],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(height: TSizes.spaceBtwItems),
                      const TSearchContainer(
                          text: 'Search in Store',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero),
                      const SizedBox(height: TSizes.spaceBtwSections),
                      TSectionHeading(
                          title: 'Featured Brands', onPressed: () {}),
                      const SizedBox(height: TSizes.spaceBtwItems / 1.5),
                      TGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            return GestureDetector(
                              onTap: () {},
                              child: TRoundedContainer(
                                padding: const EdgeInsets.all(TSizes.sm),
                                showBorder: true,
                                backgroundColor: Colors.transparent,
                                child: Row(
                                  children: [
                                    //--Icon
                                    Flexible(
                                      child: TCircularImage(
                                          isNetworkImage: false,
                                          image: TImages.accousticIcon2,
                                          backgroundColor: Colors.transparent),
                                    ),
                                    const SizedBox(
                                        width: TSizes.spaceBtwItems / 2),

                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          TBrandTitleWithVerifiedIcon(
                                              title: 'Yamaha',
                                              brandTextSize: TextSizes.large),
                                          Text(
                                            '10 products with asjbsd sj',
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ],
                  ),
                ),
              )
            ];
          },
          body: Container()),
    );
  }
}
