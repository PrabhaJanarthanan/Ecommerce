import 'package:ecommerce/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';
import 'package:flutter/material.dart';

class PROverallProductRating extends StatelessWidget {
  const PROverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3, child: Text('4.8', style: Theme.of(context).textTheme.displayLarge)),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              PRRatingProgressIndicator(text: '5', value: 1.0),
              PRRatingProgressIndicator(text: '4', value: 0.8),
              PRRatingProgressIndicator(text: '3', value: 0.6),
              PRRatingProgressIndicator(text: '2', value: 0.4),
              PRRatingProgressIndicator(text: '1', value: 0.2),
            ],
          ),
    
        )
      ],
    );
  }
}