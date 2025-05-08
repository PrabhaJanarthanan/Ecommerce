import 'package:ecommerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/searchbar_container.dart';
import '../../../../common/widgets/layout/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PRPrimaryHeaderContainer(
              child: Column(
                children: [
                  //appbar
                  PRHomeAppBar(),

                  const SizedBox(height: PRSizes.spaceBtwSections),

                  //searchbar
                  PRSearchBarContainer(
                    text: 'Search for products',
                  ),
                  const SizedBox(height: PRSizes.spaceBtwSections),

                  //categories
                  Padding(
                    padding: EdgeInsets.only(left: PRSizes.defaultSpace),
                    child: Column(
                      children: [
                        //heading
                        const PRSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: PRColors.white,
                        ),
                        const SizedBox(height: PRSizes.spaceBtwItems),
                        //categories
                        const PRHomeCategories()
                      ],
                    ),
                  ),
                  const SizedBox(height: PRSizes.spaceBtwSections),
                ],
              ),
            ),
            //body
            Padding(
              padding: const EdgeInsets.all(PRSizes.defaultSpace),
              child: Column(
                children: [
                  //promoslider
                  PRPromoSlider(
                    banners: [
                      PRImages.banner1,
                      PRImages.banner2,
                      PRImages.banner3,
                    ],
                  ),
                  const SizedBox(height: PRSizes.spaceBtwSections),

                  //heading
                  PRSectionHeading(title: 'Popular Products', onPressed: () {}),
                  const SizedBox(height: PRSizes.spaceBtwSections),

                  //popular products
                  PRGridLayout(
                    itemCount: 2,
                    itemBuilder: (_, index) => PRProductCardVertical(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
