import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class PRBillingAmountSection extends StatelessWidget {
  const PRBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Sub total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Subtotal", style: Theme.of(context).textTheme.bodyMedium),
            Text("₹777", style: Theme.of(context).textTheme.bodyMedium),

          ],
        ),
        const SizedBox(height: PRSizes.spaceBtwItems / 2),

        //shipping chargers
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Shipping Charges", style: Theme.of(context).textTheme.bodyMedium),
            Text("₹37", style: Theme.of(context).textTheme.labelLarge),

          ],
        ),
        const SizedBox(height: PRSizes.spaceBtwItems / 2),

        //taxes
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Taxes", style: Theme.of(context).textTheme.bodyMedium),
            Text("₹37", style: Theme.of(context).textTheme.labelLarge),

          ],
        ),
        const SizedBox(height: PRSizes.spaceBtwItems / 2),

        //Total
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Order Total", style: Theme.of(context).textTheme.bodyMedium),
            Text("₹600", style: Theme.of(context).textTheme.titleMedium),

          ],
        ),


      ],
    );
  }
}