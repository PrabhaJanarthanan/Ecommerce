import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class PRCircularIcon extends StatelessWidget {
  const PRCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = PRSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
        ? backgroundColor!
        : PRHelperFunctions.isDarkMode(context)
        ? PRColors.black.withAlpha(20)
        : PRColors.white.withAlpha(20),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon, color: color, size: size)),
    );
    //bool isDarkMode = PRHelperFunctions.isDarkMode(context);

    // Default icon color based on the theme mode
    //Color iconColor = color ?? (isDarkMode ? Colors.white : Colors.black);

    // return Container(
    //   width: width,
    //   height: height,
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(100),
    //     color: backgroundColor != null
    //         ? backgroundColor!
    //         : isDarkMode
    //             ? PRColors.black.withAlpha(20)
    //             : PRColors.white.withAlpha(20),
    //   ),
    //   child: IconButton(
    //     onPressed: onPressed,
    //     icon: Icon(icon, color: color, size: size),
    //   ),
    // );
  }
}
