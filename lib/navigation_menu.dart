import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:uji_proyek_2/features/personalization/screens/profile/profile_screens.dart';
import 'package:uji_proyek_2/features/shop/screens/favorite/favourite_screens.dart';
import 'package:uji_proyek_2/features/shop/screens/home/widgets/home_screens.dart';
import 'package:uji_proyek_2/features/shop/screens/search/searching_screens.dart';
import 'package:uji_proyek_2/utils/constants/colors.dart';
import 'package:uji_proyek_2/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: darkMode ? TColors.white38 : TColors.black,
          indicatorColor: darkMode ? TColors.white : TColors.darkerGrey,
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(
                icon: Icon(Iconsax.search_favorite), label: 'Searching'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Favorite'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const SearchScreen(),
    const FavouriteScreen(),
    const ProfileScreen(),
  ];
}
