import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../sub_category/sub_categories.dart';

class PRHomeCategories extends StatelessWidget {
  const PRHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return PRVerticalImageText(
            image: PRImages.sofaIcon,
            title: 'Shoes',
            ontap: () => Get.to(() => SubCategoriesScreen()),
          );
        },
      ),
    );
  }
}
