import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/images/rounded_container.dart';
import '../../../../../utils/constants/sizes.dart';

class PRSingleAddress extends StatelessWidget {
  const PRSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = PRHelperFunctions.isDarkMode(context);
    return  PRRoundedContainer(
              width: double.infinity,
              padding: const EdgeInsets.all(PRSizes.md),
              showBorder: true,
              backgroundColor: selectedAddress ? PRColors.primaryColor : Colors.transparent,
              borderColor: selectedAddress
              ? Colors.transparent
              : dark
              ? PRColors.darkerGrey
              : PRColors.grey,
              margin: const EdgeInsets.only(bottom: PRSizes.spaceBtwItems),
              child: Stack(
                children: [
                  Positioned(
                    right: 5,
                    top: 0,
                    child: Icon(
                      selectedAddress ? Iconsax.tick_circle5 : null,
                      color: selectedAddress
                      ? dark 
                        ? PRColors.light
                        : PRColors.dark
                        : null,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Prabha Palaniswamy',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleLarge),
                      const SizedBox(height: PRSizes.sm/2),
                      Text('+91 6382164040',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis),
                      const SizedBox(height: PRSizes.sm/2),

                      Text(
                        'A.Nalroad, TG Valasu Post, Kallimandhayam via, Oddanchatram TK',
                        softWrap: true,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: PRSizes.sm/2),
                     
                    ],
                  )
                ],
              ),
            );
  }
}