import 'package:ecommerce/features/authentication/screens/signup/widgets/termsandconditions_checkbox.dart';
import 'package:ecommerce/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../controllers/signup/signup_controller.dart';

class PRSignupForm extends StatelessWidget {
  const PRSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) => PRValidator.validateEmptyText('First Name', value),
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
                  controller: controller.lastName,
                  validator: (value) => PRValidator.validateEmptyText('Last Name', value),
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
            controller: controller.userName,
            validator: (value) => PRValidator.validateEmptyText('User Name', value),
            expands: false,
            decoration: const InputDecoration(
              labelText: PRTexts.userName,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: PRSizes.spaceBtwInputFields),

          //Email
          TextFormField(
            controller: controller.email,
            validator: (value) => PRValidator.validateEmail(value),
            decoration: const InputDecoration(
              labelText: PRTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: PRSizes.spaceBtwInputFields),

          //phonenumber
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => PRValidator.validatePhoneNumber(value),
            decoration: const InputDecoration(
              labelText: PRTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: PRSizes.spaceBtwInputFields),

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
          const SizedBox(height: PRSizes.spaceBtwSections),

          //termsandconditions check
          TermsandConditionsCheckBox(),

          const SizedBox(height: PRSizes.spaceBtwSections),

          //signupbutton
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controller.signup(),
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
