import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TermsandConditionsCheckBox extends StatelessWidget {
  const TermsandConditionsCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = PRHelperFunctions.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
          width: 20,
          height: 20,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(width: PRSizes.spaceBtwItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: '${PRTexts.iAgreeTo} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: '${PRTexts.privacyPolicy} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? Colors.white : PRColors.primaryColor,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? Colors.white : PRColors.primaryColor,
                    ),
              ),
              TextSpan(
                  text: '${PRTexts.and} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: PRTexts.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? Colors.white : PRColors.primaryColor,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? Colors.white : PRColors.primaryColor,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
