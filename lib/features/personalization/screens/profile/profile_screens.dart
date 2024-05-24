import 'package:flutter/material.dart';
import 'package:uji_proyek_2/common/widgets/appbar/appbar.dart';
import 'package:uji_proyek_2/common/widgets/custom_shapes_container/container/section_heading.dart';
import 'package:uji_proyek_2/common/widgets/images/circular_image.dart';
import 'package:uji_proyek_2/features/personalization/screens/profile/profile_menu/profile_menu.dart';
import 'package:uji_proyek_2/utils/constants/image_strings.dart';
import 'package:uji_proyek_2/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(
                        image: TImages.userProfile1, width: 80, height: 80),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Change Profile Picture')),
                  ],
                ),
              ),

              //Details
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              //Heading Profile Info
              const TSectionHeading(
                  title: 'Profile Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(
                  title: 'Name', value: 'Kelompok Jaya', onPressed: () {}),
              TProfileMenu(title: 'UserName', value: 'Jaya', onPressed: () {}),

              const SizedBox(height: TSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              const TSectionHeading(
                  title: 'Personal Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwInputFields),

              TProfileMenu(title: 'User ID', value: '45689', onPressed: () {}),
              TProfileMenu(
                  title: 'E-mail',
                  value: 'kelompokjaya@gmail.com',
                  onPressed: () {}),
              TProfileMenu(
                  title: 'Nomor Hp', value: '081278900897', onPressed: () {}),
              TProfileMenu(
                  title: 'Jenis Kelamin', value: 'Pria', onPressed: () {}),
              TProfileMenu(
                  title: 'Tanggal Lahir',
                  value: '13 Oct, 2004',
                  onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
