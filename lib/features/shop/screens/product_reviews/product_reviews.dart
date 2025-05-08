import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/features/shop/screens/product_reviews/widgets/overall_product_rating.dart';
import 'package:ecommerce/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/products/ratings/rating_indicator.dart';
import '../../../../utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //AppBar
      appBar: PRAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),


      //Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(PRSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Rating and Reviews are verified and are from people who use the same type of device that you use."),
              SizedBox(height: PRSizes.spaceBtwSections),

              //overall product rating
              PROverallProductRating(),
              PRRatingBarIndicator(rating: 4.5),
              Text("12777", style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: PRSizes.spaceBtwSections),

              //User review list
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard()

            ],
          ),),

      ),
    );
  }
}



