import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/success_screen/success_screen.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(
              () => LoginScreen(),
            ),
            icon: Icon(
              CupertinoIcons.clear,
              color: PRColors.primaryColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(PRSizes.defaultSpace),
          child: Column(
            children: [
              //image
              Image(
                image: AssetImage(PRImages.emailVerification),
                width: PRHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: PRSizes.spaceBtwSections),

              //title and subtitle
              Text(PRTexts.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: PRSizes.spaceBtwItems),
              Text('support@profinix.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),
              const SizedBox(height: PRSizes.spaceBtwItems),
              Text(PRTexts.confirmEmailSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: PRSizes.spaceBtwSections),

              //buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(
                    () => SuccessScreen(
                      image: PRImages.emailVerification,
                      title: PRTexts.yourAccountCreatedTitle,
                      subTitle: PRTexts.yourAccountCreatedSubTitle,
                      onPressed: () => Get.to(
                        () => LoginScreen(),
                      ),
                    ),
                  ),
                  child: Text(
                    PRTexts.prcontinue,
                  ),
                ),
              ),
              const SizedBox(height: PRSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    PRTexts.resendEmail,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
