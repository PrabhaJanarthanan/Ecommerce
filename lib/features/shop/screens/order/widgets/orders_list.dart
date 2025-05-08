import 'package:ecommerce/common/widgets/images/rounded_container.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class PROrderListItems extends StatelessWidget {
  const PROrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = PRHelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 5,
      separatorBuilder: (_, __) => const SizedBox(height: PRSizes.spaceBtwItems),
      itemBuilder: (_, index) => PRRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(PRSizes.md),
        backgroundColor: dark ? PRColors.dark : PRColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                //1st row
                Icon(Iconsax.ship),
                SizedBox(width: PRSizes.spaceBtwItems/2),
      
                //2.Status and Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Processing',
                      style: Theme.of(context).textTheme.bodyLarge!.apply(color: PRColors.primaryColor,
                      fontSizeDelta: 1),
                      ),
                      Text('01 Aug 2025',style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                ),
      
                //3.Icon
                IconButton(onPressed: (){}, 
                icon: Icon(Iconsax.arrow_right_34, size: PRSizes.iconSm)),
              ],
            ),
            const SizedBox(height: PRSizes.spaceBtwItems),
      
            //row 2
             Row(
               children: [
                 Expanded(
                   child: Row(
                    children: [
                      //Icon
                      Icon(Iconsax.tag),
                      SizedBox(width: PRSizes.spaceBtwItems/2),
                   
                      //2.Status and Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           Text(
                            'Order',
                            style: Theme.of(context).textTheme.labelMedium),
                            Text(
                              '[#007]',
                            style: Theme.of(context).textTheme.titleMedium)
                            ],
                        ),
                      ),
                             
                    ],
                                 ),
                 ),
      
             Expanded(
               child: Row(
                    children: [
                      //Icon
                      Icon(Iconsax.calendar),
                      SizedBox(width: PRSizes.spaceBtwItems/2),
                   
                      //2.Status and Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           Text(
                            'Shipping Date',
                            style: Theme.of(context).textTheme.labelMedium),
                            Text(
                              '02nd Nov 2025',
                            style: Theme.of(context).textTheme.titleMedium)
                            ],
                        ),
                      ),
                         
                    ],
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