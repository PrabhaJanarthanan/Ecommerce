import 'package:ecommerce/common/widgets/images/rounded_container.dart';
import 'package:ecommerce/common/widgets/texts/brand_title_text_withverified_icon.dart';
import 'package:ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../icons/circular_icon.dart';
import '../../images/rounded_images.dart';

class PRProductCardHorizontal extends StatelessWidget {
  const PRProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = PRHelperFunctions.isDarkMode(context);
    return Container(
        width: 310,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
         // boxShadow: [PRShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(PRSizes.productImageRadius),
          color: dark ? PRColors.darkerGrey : PRColors.softGrey,
        ),
        child: Row(
          children: [
            //Thumbnail
            PRRoundedContainer(
              height: 120,
              padding: const EdgeInsets.all(PRSizes.sm),
              backgroundColor: dark ? PRColors.dark : PRColors.light,
              child: Stack(
                children: [
                  //Thumbnail image
                  SizedBox(
                    height: 120,
                    width: 120,
                    child: PRRoundedImages(
                      imageUrl: PRImages.product1, applyImageRadius: true),
                  ),
                   //saletag
                  Positioned(
                    top: 12,
                    //left: 10,
                    child: PRRoundedContainer(
                      radius: PRSizes.sm,
                      backgroundColor: PRColors.secondaryColor.withAlpha(50),
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
                  ),
                  //favourite icon button
                  Positioned(
                      top: 0,
                      right: 0,
                      child: PRCircularIcon(
                          icon: Iconsax.heart5, color: Colors.red),
                          ),
                  
                ],
              ),
            ),
            //const SizedBox(width: PRSizes.spaceBtwItems/2),
            //Details
            SizedBox(
              width: 172,
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PRProductTitleText(
                        title: 'Green Nike Half Sleeve T-shirt',
                        smallSize: true,
                      ),
                      SizedBox(height: PRSizes.spaceBtwItems / 2),
                      PRBrandTitleTextWithVerifiedIcon(title: 'Nike'),
                    ],
                  ),
                const Spacer(),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Pricing
                    Flexible(child: PRProductPriceText(price: '277.0')),

                    //Add to cart button
                    Container(
                      decoration: const BoxDecoration(
                      color: PRColors.dark,
                      borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(PRSizes.cardRadiusMd),
                      bottomRight: Radius.circular(PRSizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                    width: PRSizes.iconLg * 1.2,
                    height: PRSizes.iconLg * 1.2,
                    child: Center(
                      child: Icon(Iconsax.add, color: PRColors.white),
                    ),
                  ),
                ),
                  ],
                )
              
                ],
              ),
            )
          ],
        )
      );
  }
}
