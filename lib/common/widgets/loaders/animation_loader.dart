import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class PRAnimationLoaderWidget extends StatelessWidget {

  //Default constructor for the PRAnimationLoaderWidget

  //Parameters:
  //  -text: The text to display below the animation
  //  -animation: The path to the lottie animation file
  // -showAction: Whether to show an action button below the text
  // -actionText: The text to display on the action button
  // -onActionPressed: The callback function to execute when the action button is pressed

  const PRAnimationLoaderWidget({
    super.key, 
    required this.text, 
    required this.animation, 
    this.showAction = false, 
    this.actionText, 
    this.onActionPressed});

  final String text;
  final String animation;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Lottie.asset(animation, 
          width: MediaQuery.of(context).size.width * 0.8,
          height: 200,
          fit: BoxFit.contain),
          const SizedBox(height: PRSizes.defaultSpace),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: PRSizes.defaultSpace),
          showAction
            ? SizedBox(
              width: 250,
              child: OutlinedButton(onPressed: onActionPressed, 
              style: OutlinedButton.styleFrom(backgroundColor: PRColors.dark),
              child: Text(
                actionText!,
                style: Theme.of(context).textTheme.bodyMedium!.apply(color: PRColors.light),
              )
          ),
            )
            : const SizedBox(),
        ],
      ),
    );
  }
}