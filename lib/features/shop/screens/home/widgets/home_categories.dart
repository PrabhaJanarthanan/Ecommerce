import 'package:flutter/material.dart';

import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';

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
            title: 'Sofa',
            ontap: () {},
          );
        },
      ),
    );
  }
}
