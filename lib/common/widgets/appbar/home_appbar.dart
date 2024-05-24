import 'package:flutter/material.dart';
import 'package:uji_proyek_2/common/widgets/appbar/appbar.dart';
import 'package:uji_proyek_2/common/widgets/product.cart/card_menu.dart';
import 'package:uji_proyek_2/utils/constants/colors.dart';
import 'package:uji_proyek_2/utils/constants/text_strings.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(TTexts.homeAppBarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelSmall!
                  .apply(color: TColors.grey)),
          Text(TTexts.homeAppSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .apply(color: TColors.white)),
        ],
      ),
      actions: [
        TCartCounterIcon(onPressed: () {}, iconColor: TColors.white),
      ],
    );
  }
}
