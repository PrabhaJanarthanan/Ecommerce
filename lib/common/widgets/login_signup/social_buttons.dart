import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class PRSocialButtons extends StatelessWidget {
  const PRSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: PRSizes.iconMd,
              height: PRSizes.iconMd,
              image: AssetImage(PRImages.google),
            ),
          ),
        ),
        const SizedBox(width: PRSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: PRSizes.iconMd,
              height: PRSizes.iconMd,
              image: AssetImage(PRImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
