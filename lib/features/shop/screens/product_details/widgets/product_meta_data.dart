import 'package:ecommerce/common/widgets/images/circular_images.dart';
import 'package:ecommerce/common/widgets/texts/brand_title_text_withverified_icon.dart';
import 'package:ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce/utils/constants/enums.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/images/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class PRProductMetaData extends StatelessWidget {
  const PRProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = PRHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Price and sale price
        Row(
          children: [
            //Sale tag
            PRRoundedContainer(
                      radius: PRSizes.sm,
                      backgroundColor: PRColors.primaryColor,
                      padding: const EdgeInsets.symmetric(
                          horizontal: PRSizes.sm, vertical: PRSizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: PRColors.black),
                      ),
                    ),
                    SizedBox(width: PRSizes.spaceBtwItems),

            //Price
            Text('₹250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            SizedBox(width: PRSizes.spaceBtwItems),
            PRProductPriceText(price: '175', isLarge: true)
          ],
        ),
        SizedBox(height: PRSizes.spaceBtwItems/1.5),

        //Title
        PRProductTitleText(title: 'Vengai Wooden Plates'),
        SizedBox(height: PRSizes.spaceBtwItems/1.5),

        //Stock Status
        Row(
          children: [
            PRProductTitleText(title: 'Status'),
            SizedBox(width: PRSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        SizedBox(height: PRSizes.spaceBtwItems/1.5),

        //Brand
        Row(
          children: [
            PRCircularImage(
              image:PRImages.spatulasIcon,
              width: 32,
              height: 32,
              overlayColor: dark ? PRColors.white : PRColors.black),
            PRBrandTitleTextWithVerifiedIcon(title: 'Wood', brandTextSize: TextSizes.medium),
          ],
        ),
      ],
    );
  }
}