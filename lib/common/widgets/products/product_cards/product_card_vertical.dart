import 'package:ecommerce/common/styles/shadows.dart';
import 'package:ecommerce/common/widgets/images/rounded_container.dart';
import 'package:ecommerce/common/widgets/images/rounded_images.dart';
import 'package:ecommerce/common/widgets/texts/brand_title_text_withverified_icon.dart';
import 'package:ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce/features/shop/screens/product_details/product_details.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../icons/circular_icon.dart';
import '../../texts/product_title_text.dart';

class PRProductCardVertical extends StatelessWidget {
  const PRProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = PRHelperFunctions.isDarkMode(context);
    //with side paddings, color, edges , radius and shadow
    return GestureDetector(
      onTap: () => Get.to(() => ProductDetails()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [PRShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(PRSizes.productImageRadius),
          color: dark ? PRColors.darkGrey : PRColors.white,
        ),
        child: Column(
          children: [
            //thumbnail, wishlist, discount tag
            PRRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(PRSizes.sm),
              backgroundColor: dark ? PRColors.dark : PRColors.light,
              child: Stack(
                children: [
                  //thumbail image
                  Center(
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
                          icon: Iconsax.heart5, color: Colors.red)),
                ],
              ),
            ),
            const SizedBox(height: PRSizes.spaceBtwItems / 2),

            //details
            Padding(
              padding: EdgeInsets.only(left: PRSizes.sm),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PRProductTitleText(title: 'Sports Shoes', smallSize: true),
                    SizedBox(height: PRSizes.spaceBtwItems / 2),
                    PRBrandTitleTextWithVerifiedIcon(title: 'Nike'),
                  ],
                ),
              ),
            ),

            Spacer(),

            //pricerow
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: PRSizes.sm),
                  child: PRProductPriceText(
                    price: '450.00',
                  ),
                ),

                //add to cart button
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
