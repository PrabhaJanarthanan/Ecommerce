import 'package:ecommerce/features/authentication/screens/signup/email_verification.dart';
import 'package:ecommerce/features/authentication/screens/signup/widgets/termsandconditions_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: PRTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: PRSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: PRTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: PRSizes.spaceBtwInputFields),

          //username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: PRTexts.userName,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: PRSizes.spaceBtwInputFields),

          //Email
          TextFormField(
            decoration: const InputDecoration(
              labelText: PRTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: PRSizes.spaceBtwInputFields),

          //phonenumber
          TextFormField(
            decoration: const InputDecoration(
              labelText: PRTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: PRSizes.spaceBtwInputFields),

          //password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: PRTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: PRSizes.spaceBtwSections),

          //termsandconditions check
          TermsandConditionsCheckBox(),

          const SizedBox(height: PRSizes.spaceBtwSections),

          //signupbutton
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => EmailVerificationScreen()),
              child: const Text(
                PRTexts.createAccount,
              ),
            ),
          )
        ],
      ),
    );
  }
}
