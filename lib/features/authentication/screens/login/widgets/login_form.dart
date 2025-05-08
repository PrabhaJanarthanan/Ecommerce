import 'package:ecommerce/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:ecommerce/features/authentication/screens/signup/signup.dart';
import 'package:ecommerce/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: PRSizes.spaceBtwSections),
        child: Column(
          children: [
            //Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: PRTexts.email,
              ),
            ),
            SizedBox(height: PRSizes.spaceBtwInputFields),

            //password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: PRTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: PRSizes.spaceBtwInputFields),

            //rememberme and forgot pwd
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //rememberme
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(PRTexts.rememberMe),
                  ],
                ),
                //forgot password
                TextButton(
                  onPressed: () => Get.to(() => const ForgotPassword()),
                  child: Text(PRTexts.forgotPassword),
                ),
              ],
            ),
            const SizedBox(height: PRSizes.spaceBtwSections),

            //signinbutton
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => NavigationMenu()),
                child: const Text(PRTexts.signIn),
              ),
            ),
            const SizedBox(height: PRSizes.spaceBtwItems),
            //create account button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => SignupScreen()),
                child: const Text(PRTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
