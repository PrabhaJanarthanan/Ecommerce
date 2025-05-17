import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import '../../../../../common/widgets/icons/circular_icon.dart';
import '../../../../../common/widgets/images/rounded_images.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class PRProductImageSlider extends StatelessWidget {
  const PRProductImageSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = PRHelperFunctions.isDarkMode(context);
    return PRCurvedEdgeWidget(
      child: Container(
        color: dark ? PRColors.dark : PRColors.light,
        child: Stack(
          children: [
            //Main image
            SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(PRSizes.productImageRadius * 2),
                child: Center(child: Image(image: AssetImage(PRImages.product1))),
              ),
            ),
    
            //image slider
            Positioned(
              right: 0,
              bottom: 30,
              left: PRSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  
                  separatorBuilder: (_, __) => SizedBox(width: PRSizes.spaceBtwItems),
                 
                  itemBuilder: (_, index) =>   PRRoundedImages(
                    width: 80,
                    backgroundColor: dark ? PRColors.dark : PRColors.white,
                    border: Border.all(color: PRColors.primaryColor),
                    padding: EdgeInsets.all(PRSizes.sm),
                    imageUrl: PRImages.product2),
                    ),
              ),
            ),
    
            //Appbar
            PRAppBar(
              showBackArrow: true,
              actions: [
                PRCircularIcon(
                  icon: Iconsax.heart5, color: Colors.red),
                
              ],
            )
            
            
          ],
        ),
      ),
    );
  }
}