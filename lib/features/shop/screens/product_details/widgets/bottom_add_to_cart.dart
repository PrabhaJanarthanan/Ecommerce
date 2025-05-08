import 'package:ecommerce/common/widgets/icons/circular_icon.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class PRBottomAddToCart extends StatelessWidget {
  const PRBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = PRHelperFunctions.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: PRSizes.defaultSpace, vertical: PRSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? PRColors.darkerGrey : PRColors.light,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(PRSizes.cardRadiusLg),
          topRight: Radius.circular(PRSizes.cardRadiusLg),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              PRCircularIcon(icon: Iconsax.minus,
              backgroundColor: PRColors.darkGrey,
              width: 40,
              height: 40,
              color: PRColors.white),

              SizedBox(width: PRSizes.spaceBtwItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              SizedBox(width: PRSizes.spaceBtwItems),

              PRCircularIcon(icon: Iconsax.add,
              backgroundColor: PRColors.black,
              width: 40,
              height: 40,
              color: PRColors.white),
            ],
          ),
          ElevatedButton(
          onPressed: (){},
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(PRSizes.md),
            backgroundColor: PRColors.black,
            side: BorderSide(color: PRColors.black),
          ),
          child: Text('Add to Cart'))
        ],
      ),
    );
  }
}