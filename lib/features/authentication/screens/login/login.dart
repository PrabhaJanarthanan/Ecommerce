import 'package:ecommerce/common/styles/spacing_style.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: PRSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //logo title ,subtitle
              LoginHeader(),

              //loginform
              LoginForm(),

              //divider
              PRFormDivider(
                dividerText: PRTexts.orSignInWith.capitalize!,
              ),

              const SizedBox(height: PRSizes.spaceBtwSections),

              //footer
              PRSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
