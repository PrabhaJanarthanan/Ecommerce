import 'package:ecommerce/features/authentication/controllers/login/login_controller.dart';
import 'package:ecommerce/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:ecommerce/features/authentication/screens/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/validators/validation.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(LoginController());

    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: PRSizes.spaceBtwSections),
        child: Column(
          children: [
            //Email
            TextFormField(
              controller: controller.email,
              validator: (value) => PRValidator.validateEmail(value),
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: PRTexts.email,
              ),
            ),
            SizedBox(height: PRSizes.spaceBtwInputFields),

            //password
           Obx(
            () => TextFormField(
              controller: controller.password,
              validator: (value) => PRValidator.validatePassword(value),
              obscureText: controller.hidePassword.value,
              decoration:  InputDecoration(
                labelText: PRTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                  onPressed: () => controller.hidePassword.value = !controller.hidePassword.value, 
                  icon:  Icon(controller.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye),),
              ),
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
                    Obx(() => Checkbox(value: controller.rememberMe.value, 
                    onChanged: (value) => controller.rememberMe.value = !controller.rememberMe.value)),
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
                onPressed: () => controller.emailAndPasswordSignIn(),
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
