
import 'package:ecommerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../layout/grid_layout.dart';

class PRSortableProducts extends StatelessWidget {
  const PRSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Dropdown
        DropdownButtonFormField(
          decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value){},
           items: [
            'Name', 'Higher Price', 'Lower Price', 'Sale', 'Newest', 'Popular'
           ].map((option) => DropdownMenuItem(value: option, child: Text(option))).toList()
        ),
        const SizedBox(height: PRSizes.spaceBtwSections),
    
        //Products Grid
        PRGridLayout(itemCount: 8,
        itemBuilder: (_, index) => PRProductCardVertical())
      ],
    );
  }
}