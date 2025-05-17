import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../../common/widgets/images/rounded_images.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../controllers/home_controller.dart';

class PRPromoSlider extends StatelessWidget {
  const PRPromoSlider({
    required this.banners,
    super.key,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: banners.map((url) => PRRoundedImages(imageUrl: url)).toList(),
        ),
        const SizedBox(height: PRSizes.spaceBtwItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  PRCircularContainer(
                      width: 20,
                      height: 4,
                      margin: EdgeInsets.only(right: PRSizes.spaceBtwItems),
                      backgroundColor:
                          controller.carouselCurrentIndex.value == i
                              ? PRColors.primaryColor
                              : PRColors.grey),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
