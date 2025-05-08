import 'package:ecommerce/common/widgets/images/rounded_container.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../../common/widgets/products/ratings/rating_indicator.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = PRHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Row(
              children: [
                CircleAvatar(backgroundImage: AssetImage(PRImages.profile)),
                SizedBox(width: PRSizes.spaceBtwItems),
                Text('Prabha Palaniswamy', style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
          ],
        ),
        SizedBox(height: PRSizes.spaceBtwItems),

        //Review
        Row(
          children: [
            PRRatingBarIndicator(rating: 4),
            SizedBox(width: PRSizes.spaceBtwItems),
            Text('01 Aug 2024', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: PRSizes.spaceBtwItems),
        ReadMoreText('The user interface of the app is quit good. I was able to navigate and make purchases seamlessly. Great job!',
        trimLines: 2,
        trimMode: TrimMode.Line,
        trimExpandedText: '..show less',
        trimCollapsedText: '..show more',
        moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: PRColors.primaryColor),
        lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: PRColors.primaryColor),
        ),
        SizedBox(height: PRSizes.spaceBtwItems),

        //Company review
        PRRoundedContainer(
          backgroundColor: dark ? PRColors.darkerGrey : PRColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(PRSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("RK Woodlands", style: Theme.of(context).textTheme.titleLarge),
                    Text("01 Aug 2024", style: Theme.of(context).textTheme.bodyMedium),
                    
                  ],
            
                ),
                SizedBox(height: PRSizes.spaceBtwItems),
                    ReadMoreText('The user interface of the app is quit good. I was able to navigate and make purchases seamlessly. Great job!',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimExpandedText: '..show less',
                    trimCollapsedText: '..show more',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: PRColors.primaryColor),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: PRColors.primaryColor),
                    ),
              ],
            ),
          ),
        ),

      const SizedBox(height: PRSizes.spaceBtwSections),
        
      ],
    );
  }
}