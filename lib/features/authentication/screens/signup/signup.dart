import 'package:ecommerce/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerce/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(PRSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //title
              Text(PRTexts.signUpTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: PRSizes.spaceBtwSections),

              //form
              PRSignupForm(),
              const SizedBox(height: PRSizes.spaceBtwSections),

              //divider
              PRFormDivider(dividerText: PRTexts.orSignUpWith.capitalize!),

              const SizedBox(height: PRSizes.spaceBtwSections),

              //socialbuttons
              PRSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
