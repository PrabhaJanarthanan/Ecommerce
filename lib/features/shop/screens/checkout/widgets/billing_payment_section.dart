import 'package:ecommerce/common/widgets/images/rounded_container.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class PRBillingPaymentSection extends StatelessWidget {
  const PRBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = PRHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        PRSectionHeading(title: 'Payment Method', buttonTitle: 'Change', onPressed: (){}),
        const SizedBox(height: PRSizes.spaceBtwItems / 2),
        Row(
          children: [
            PRRoundedContainer(
              width:60,
              height: 35,
              backgroundColor: dark ? PRColors.light : PRColors.white,
              padding: const EdgeInsets.all(PRSizes.sm),
              child: Image(image: AssetImage(PRImages.paypal),
              fit: BoxFit.contain),
            ),
            const SizedBox(width: PRSizes.spaceBtwItems / 2),
            Text('Paypal', style: Theme.of(context).textTheme.bodyLarge),
          ],
        )
      ],
      
    );
  }
}