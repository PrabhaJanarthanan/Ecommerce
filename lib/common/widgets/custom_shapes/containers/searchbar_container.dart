import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class PRSearchBarContainer extends StatelessWidget {
  const PRSearchBarContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: PRSizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = PRHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: PRSizes.defaultSpace),
        child: Container(
          width: PRDeviceUtils.getScreenWidth(context),
          padding: EdgeInsets.all(PRSizes.md),
          decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? PRColors.dark
                    : PRColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(PRSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: PRColors.grey) : null,
          ),
          child: Row(
            children: [
              Icon(icon, color: PRColors.dark),
              const SizedBox(width: PRSizes.spaceBtwItems),
              Text(text, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ),
    );
  }
}
