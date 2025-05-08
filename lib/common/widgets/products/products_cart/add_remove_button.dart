import 'package:ecommerce/common/widgets/icons/circular_icon.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class PRProductQuantityWithAddRemoveButton extends StatelessWidget {
  const PRProductQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        PRCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: PRSizes.md,
          color: PRHelperFunctions.isDarkMode(context) ?
          PRColors.white : PRColors.black,
          backgroundColor: PRHelperFunctions.isDarkMode(context) ?
          PRColors.darkerGrey : PRColors.light,
        ),
         
        SizedBox(width: PRSizes.spaceBtwItems),

        Text('2', style: Theme.of(context).textTheme.titleSmall),

        SizedBox(width: PRSizes.spaceBtwItems),

        PRCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: PRSizes.md,
          color: PRColors.white,
          backgroundColor: PRColors.primaryColor
      ),
      ],
    );
  }
}