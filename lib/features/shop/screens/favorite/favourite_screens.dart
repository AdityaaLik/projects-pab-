import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uji_proyek_2/common/widgets/appbar/appbar.dart';
import 'package:uji_proyek_2/common/widgets/icons/t_circular_icon.dart';
import 'package:uji_proyek_2/common/widgets/layouts/grid_layout.dart';
import 'package:uji_proyek_2/common/widgets/product/product_cart_vertical.dart';
import 'package:uji_proyek_2/features/shop/screens/home/widgets/home_screens.dart';
import 'package:uji_proyek_2/utils/constants/sizes.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title:
            Text('WishList', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          TCircularIcon(
              icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen())),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const TProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
