
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_details_imageslider.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import '../product_reviews/product_reviews.dart';


class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    //final dark = PRHelperFunctions.isDarkMode(context);
    return  Scaffold(
      bottomNavigationBar: PRBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Product image slider
            PRProductImageSlider(),


            //Product details
            Padding(
              padding: EdgeInsets.only(right: PRSizes.defaultSpace,
              left: PRSizes.defaultSpace,
              bottom: PRSizes.defaultSpace), 
              child: Column(
                children: [
                  //Rating and share
                  PRRatingAndShare(),

                  //Price, title, stock, and brand
                  PRProductMetaData(),

                  //attributes
                  PRProductAttributes(),
                  SizedBox(height: PRSizes.spaceBtwSections),

                  //checkout button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){}, child: Text('Checkout'))),
                  SizedBox(height: PRSizes.spaceBtwSections),

                  //description
                  PRSectionHeading(title: 'Description', showActionButton: false),
                  SizedBox(height: PRSizes.spaceBtwItems),
                  ReadMoreText(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a diam lectus. Sed sit amet ipsum mauris. Maecenas congue ligula ac quam viverra nec consectetur ante hendrerit.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: '...Show more',
                    trimExpandedText: '...Show less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  //reviews
                  const Divider(),
                  const SizedBox(height: PRSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PRSectionHeading(title: 'Reviews(177)', showActionButton: false),
                      IconButton(icon: Icon(Iconsax.arrow_right_3, size: 18), 
                      onPressed: () => Get.to(() => const ProductReviewsScreen())),
                    ],
                  ),
                  const SizedBox(height: PRSizes.spaceBtwSections),
                ],
              ),
              ),
          ],
        ),
      ),
    );
  }
}


