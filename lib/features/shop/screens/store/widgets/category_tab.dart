import 'package:ecommerce/common/widgets/layout/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brands/brand_showcase.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class PRCategoryTab extends StatelessWidget {
  const PRCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),

      children:[ 
        Padding(
                  padding: const EdgeInsets.all(PRSizes.defaultSpace),
                  child: Column(
                    children: [
                      //brands
                      PRBrandShowCase(images: [
                        PRImages.product1, PRImages.spatulasIcon, PRImages.product1
                      ]),
                       PRBrandShowCase(images: [
                        PRImages.product1, PRImages.spatulasIcon, PRImages.product1
                      ]),
                      const SizedBox(height: PRSizes.spaceBtwItems), 
      
                      //products
                      PRSectionHeading(title: 'You might like',             
                      onPressed: (){}),
                      const SizedBox(height: PRSizes.spaceBtwItems),
      
                      PRGridLayout(itemCount: 4, 
                      itemBuilder: (_, index) => PRProductCardVertical(),),
                      const SizedBox(height: PRSizes.spaceBtwItems),
      
                    ],
                  ),
                ),
      ],
    );
  }
}