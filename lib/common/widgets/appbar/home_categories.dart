import 'package:flutter/material.dart';
import 'package:uji_proyek_2/common/widgets/custom_shapes_container/container/vertinal_text.dart';
import 'package:uji_proyek_2/utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TVerticalImageText(
            image: TImages.accousticIcon,
            title: 'Guitar',
            onTap: () {},
          );
        },
      ),
    );
  }
}
