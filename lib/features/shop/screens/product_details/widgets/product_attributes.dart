import 'package:ecommerce/common/widgets/images/rounded_container.dart';
import 'package:ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/chips/choice_chips.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class PRProductAttributes extends StatelessWidget {
  const PRProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = PRHelperFunctions.isDarkMode(context);
    return  Column(
      children: [
        //Selected attributes pricing
        PRRoundedContainer(
          padding: const EdgeInsets.all(PRSizes.md),
          backgroundColor: dark ? PRColors.darkerGrey : PRColors.grey,
          child: Column(
            children: [
              //Title, Price and Stock status
              Row(
                children: [
                  PRSectionHeading(title: 'Variation', showActionButton: false),
                  SizedBox(width: PRSizes.spaceBtwItems),


                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Row(
                    children: [
                      const PRProductTitleText(title: 'Price : ', smallSize: true),

                      //Actual price
                      Text(
                        '₹250',
                        style: Theme.of(context).textTheme.titleSmall!.apply(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                       SizedBox(width: PRSizes.spaceBtwItems),


                      //Sale price
                     PRProductPriceText(price: '200'),
                    ],
                  ),

                  //Stock
                  Row(
                    children: [
                      PRProductTitleText(title: 'Stock : ', smallSize: true),
                      Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
                    ],
                  ),


                    ],
                  ),
              
                ],

              ),

              //Variation description
              PRProductTitleText(title: 'Description of the products',
              smallSize: true,
              maxLines: 4),
            ],
          ),
        ),
        SizedBox(height: PRSizes.spaceBtwItems),

        //Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PRSectionHeading(title: 'Colors', showActionButton: false),
            SizedBox(height: PRSizes.spaceBtwItems / 2),
           Wrap(
            spacing: 6,
            children: [
            PRChoiceChip(text: 'Green', selected: false, onSelected: (value){}),
            PRChoiceChip(text: 'Blue', selected: true, onSelected: (value){}),
            PRChoiceChip(text: 'Yellow', selected: false, onSelected: (value){}),
            
            ],
           )
          ],
        ),
         SizedBox(height: PRSizes.spaceBtwItems),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PRSectionHeading(title: 'Size', showActionButton: false),
            SizedBox(height: PRSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 6,
              children: [
            PRChoiceChip(text: 'EU 34', selected: true, onSelected: (value){}),
            PRChoiceChip(text: 'EU 36', selected: false, onSelected: (value){}),
            PRChoiceChip(text: 'EU 38', selected: false, onSelected: (value){}),
              ],
            )
          ],
        ),
      
      ],
    );
  }
}

