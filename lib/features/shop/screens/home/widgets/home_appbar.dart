import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/products/products_cart/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class PRHomeAppBar extends StatelessWidget {
  const PRHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PRAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            PRTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: PRColors.accentColor),
          ),
          Text(
            PRTexts.homeAppbarSubtitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: PRColors.textWhite),
          ),
        ],
      ),
      actions: [
        PRCartCounterIcon(onPressed: () {}, iconColor: PRColors.white),
      ],
    );
  }
}
