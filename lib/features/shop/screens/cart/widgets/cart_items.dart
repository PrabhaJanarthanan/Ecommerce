import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/products_cart/add_remove_button.dart';
import '../../../../../common/widgets/products/products_cart/cart_item.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';

class PRCartItems extends StatelessWidget {
  const PRCartItems({super.key,  this.showAddRemoveButtons = true});

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (_, __) => const SizedBox(height: PRSizes.spaceBtwSections),
            itemCount: 2,
            itemBuilder: (_, index) => Column(
              children: [
                //cart item
                PRCartItem(),
          
                if(showAddRemoveButtons) SizedBox(height: PRSizes.spaceBtwItems),
                //add and remove button row with total price
                 if(showAddRemoveButtons) Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        //for space
                        const SizedBox(width: 70),
                        //Add and Remove Button
                        PRProductQuantityWithAddRemoveButton(),
                      ],
                    ),
                    
                    PRProductPriceText(price: '175')
                   
                  ],
                )
              ],
            ),
          );
  }
}