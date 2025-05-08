import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../images/rounded_images.dart';
import '../../texts/brand_title_text_withverified_icon.dart';
import '../../texts/product_title_text.dart';

class PRCartItem extends StatelessWidget {
  const PRCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //image
        PRRoundedImages(
          imageUrl: PRImages.product1,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(PRSizes.sm),
          backgroundColor: PRHelperFunctions.isDarkMode(context) ?
          PRColors.darkerGrey : PRColors.light,
        ),
        const SizedBox(width: PRSizes.spaceBtwItems),
    
        //title, price, and size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          
              PRBrandTitleTextWithVerifiedIcon(title: 'Nike'),
              Flexible(child: PRProductTitleText(title: 'Black Sports Shoes', maxLines: 1)),
          
              //Attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Color: ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'Black  ', style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(text: 'Size: ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'IN-7 ', style: Theme.of(context).textTheme.bodyLarge),
                  ]
                )
              )
            ],
          ),
        )
      ],
    );
  }
}