import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../images/rounded_container.dart';

class PRCouponCode extends StatelessWidget {
  const PRCouponCode({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = PRHelperFunctions.isDarkMode(context);

    return PRRoundedContainer(
      showBorder: true,
      backgroundColor: dark? PRColors.dark : PRColors.white,
      padding: EdgeInsets.only(
        top: PRSizes.sm,
        left: PRSizes.md,
        right: PRSizes.sm,
        bottom: PRSizes.sm
      ),
      child: Row(
        children: [
          //--Text field
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Have a coupon code? Enter here',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          //--Button
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                foregroundColor: dark ? PRColors.white.withAlpha(80) : PRColors.dark.withAlpha(80),
                backgroundColor: Colors.grey.withAlpha(50),
                side:  BorderSide(color: Colors.grey.withAlpha(20))
              ),
              child: Text('Apply'),
            ),
          ),
        ],
      ),
    );
  }
}