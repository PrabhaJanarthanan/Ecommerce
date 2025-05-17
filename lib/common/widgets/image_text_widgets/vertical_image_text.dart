import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class PRVerticalImageText extends StatelessWidget {
  const PRVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = PRColors.white,
    this.backgroundColor,
    this.ontap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    final dark = PRHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.only(right: PRSizes.spaceBtwItems),
        child: Column(
          children: [
            //circular icons
            Container(
              width: 56,
              height: 56,
              padding: EdgeInsets.all(PRSizes.sm),
              decoration: BoxDecoration(
                color:
                    backgroundColor ?? (dark ? PRColors.black : PRColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                    color: dark ? PRColors.light : PRColors.dark),
              ),
            ),
            //text
            const SizedBox(height: PRSizes.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
