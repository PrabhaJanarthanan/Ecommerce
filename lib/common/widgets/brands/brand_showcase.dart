
import 'package:ecommerce/common/widgets/brands/brand_card.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../images/rounded_container.dart';

class PRBrandShowCase extends StatelessWidget {
  const PRBrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return PRRoundedContainer(
      showBorder: true,
      borderColor: PRColors.grey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(PRSizes.md),
      margin: const EdgeInsets.only(bottom: PRSizes.spaceBtwItems),
      child: Column(
        children: [
          //brandwith product
          const PRBrandCard(showBorder: false),
           const SizedBox(height: PRSizes.spaceBtwItems),

          //brand top3 products
          Row(
            children: images.map((image) => brandTopProductImageWidget(image, context)).toList(),
          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget (String image, context){
    return Expanded(
      child: PRRoundedContainer(
        height: 100,
        padding: const EdgeInsets.all(PRSizes.md),
        margin: const EdgeInsets.only(right: PRSizes.sm),
        backgroundColor: PRHelperFunctions.isDarkMode(context) ? PRColors.dark : PRColors.light,
        child:  Image(fit: BoxFit.contain, image: AssetImage(image)),
        
      ),
    );
  }
}