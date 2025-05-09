import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/brands/brand_card.dart';
import 'package:ecommerce/common/widgets/layout/grid_layout.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/brands/brand_products.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PRAppBar(title: Text('Brands'),showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(PRSizes.defaultSpace),
          child: Column(
            children: [
              // Heading
              PRSectionHeading(title: 'All Brands', showActionButton: false),
              SizedBox(height: PRSizes.spaceBtwItems),

              //Brands
              PRGridLayout(
              itemCount: 10, 
              mainAxisExtent: 80,
              itemBuilder: (context, index) => PRBrandCard(showBorder: true,
              onTap: () => Get.to(() => BrandProducts()),))

                
              
            ],
          ),
        ),
      ),
    );
  }
}