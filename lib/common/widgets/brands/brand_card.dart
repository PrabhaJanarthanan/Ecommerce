import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../images/circular_images.dart';
import '../images/rounded_container.dart';
import '../texts/brand_title_text_withverified_icon.dart';

class PRBrandCard extends StatelessWidget {
  const PRBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = PRHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: PRRoundedContainer(
        padding: const EdgeInsets.all(PRSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            //icon
            Flexible(
              child: PRCircularImage(
                isNetWorkImage: false,
                image: PRImages.statuesIcon,
                backgroundColor: Colors.transparent,
                overlayColor: isDark ? PRColors.white : PRColors.black,
              ),
            ),
            const SizedBox(width: PRSizes.spaceBtwItems / 2),

            //text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PRBrandTitleTextWithVerifiedIcon(
                      title: 'Nike', brandTextSize: TextSizes.large),
                  Text("77 Products",
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
