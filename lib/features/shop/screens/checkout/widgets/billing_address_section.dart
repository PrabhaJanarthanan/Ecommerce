import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/sizes.dart';

class PRBillingAddressSection extends StatelessWidget {
  const PRBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PRSectionHeading(title: 'Shipping Address', buttonTitle: 'Change', onPressed: (){}),
        const SizedBox(height: PRSizes.spaceBtwItems/2),
        Text("Prabha Palaniswamy",style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: PRSizes.spaceBtwItems/2),
        Row(
          children: [
             Icon(Iconsax.mobile, color: Colors.grey, size: 16),
             const SizedBox(width: PRSizes.spaceBtwItems),
             Text('+91 6382164040', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: PRSizes.spaceBtwItems/2),
         Row(
          children: [
             Icon(Iconsax.location, color: Colors.grey, size: 16),
             const SizedBox(width: PRSizes.spaceBtwItems),
             Expanded(
               child: Text('A.Nalroad, Oddanchatram-taluk, Dindigul-624616', 
               style: Theme.of(context).textTheme.bodyMedium,
               softWrap: true),
             ),
          ],
        ),
      ],
    );
  }
}