import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/appbar/tabbar.dart';
import 'package:ecommerce/common/widgets/layout/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/products_cart/cart_menu_icon.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/brands/all_brands.dart';
import 'package:ecommerce/features/shop/screens/store/widgets/category_tab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

import '../../../../common/widgets/custom_shapes/containers/searchbar_container.dart';
import '../../../../common/widgets/brands/brand_card.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = PRHelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: PRAppBar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            PRCartCounterIcon(
                onPressed: () {},
                iconColor: dark ? PRColors.white : PRColors.black),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                floating: true,
                pinned: true,
                backgroundColor: PRHelperFunctions.isDarkMode(context)
                    ? PRColors.black
                    : PRColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: EdgeInsets.all(PRSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      //searchbar
                      SizedBox(height: PRSizes.spaceBtwItems),
                      PRSearchBarContainer(
                          text: 'Search in Store',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero),
                      SizedBox(height: PRSizes.spaceBtwSections),

                      //featured brands
                      PRSectionHeading(
                          title: 'Featured Products',
                          showActionButton: true,
                          onPressed: () => Get.to(() => AllBrandsScreen())),
                      const SizedBox(height: PRSizes.spaceBtwItems / 1.5),

                      PRGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            return PRBrandCard(showBorder: false);
                          })
                    ],
                  ),
                ),

                //tapbar
                bottom: PRTabBar(
                  tabs: [
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Spatulas')),
                    Tab(child: Text('Chopping Boards')),
                    Tab(child: Text('Sofa')),
                    Tab(child: Text('Wooden Bed')),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
             PRCategoryTab(),
             PRCategoryTab(),
             PRCategoryTab(),
             PRCategoryTab(),
             PRCategoryTab(),
                 
            ],
          ),
        ),
      ),
    );
  }
}

