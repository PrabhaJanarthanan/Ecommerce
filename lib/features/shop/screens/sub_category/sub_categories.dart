import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/images/rounded_images.dart';
import 'package:ecommerce/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PRAppBar(
        title: Text('Sports'), showBackArrow: true),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(PRSizes.defaultSpace),
            child: Column(
              children: [
                //Banner
                PRRoundedImages(
                  width: double.infinity,
                  imageUrl: PRImages.promoBanner3, 
                  applyImageRadius: true,
                ),
                const SizedBox(height: PRSizes.spaceBtwSections),

                //Subcategories
                Column(
                  children: [
                    // Heading
                    PRSectionHeading(
                      title: 'Sports Shirts',onPressed: (){}),
                      const SizedBox(height: PRSizes.spaceBtwItems/2),
                    
                    SizedBox(
                      height: 120,
                      child: ListView.separated(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) => const SizedBox(width: PRSizes.spaceBtwItems),
                        itemBuilder: (context, index)=> PRProductCardHorizontal()),
                    )
                      
                  ],
                )
              ],
            ),
          ),
        ),
      
    );
  }
}