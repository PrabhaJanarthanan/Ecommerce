
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';

class PRRatingAndShare extends StatelessWidget {
  const PRRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //Rating
        Row(
          children: [
            const Icon(Iconsax.star5, color: Colors.amber,size: 24),
            const SizedBox(width: PRSizes.spaceBtwItems/2),
            Text.rich(
               TextSpan(
                children: [
                  TextSpan(
                    text: '4.5',
                    style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(text: '(177)'),
                  
                ],
              ),
            )
          ],
        ),
    
        //Share Button
        IconButton(onPressed: (){}, 
        icon: Icon(Icons.share, 
        size: PRSizes.iconMd))
      ],
    );
  }
}