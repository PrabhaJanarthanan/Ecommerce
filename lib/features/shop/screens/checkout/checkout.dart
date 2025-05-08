import 'package:ecommerce/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:ecommerce/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:ecommerce/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:ecommerce/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/images/rounded_container.dart';
import '../../../../common/widgets/products/products_cart/coupon_widget.dart';
import '../../../../common/widgets/success_screen/success_screen.dart';
import '../../../../navigation_menu.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = PRHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar:PRAppBar(
        showBackArrow: true,
        title: Text('Order Review',
        style: Theme.of(context).textTheme.headlineSmall)),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(PRSizes.defaultSpace),
            child: Column(
              children: [
                //--Items is cart
                const PRCartItems(showAddRemoveButtons: false),
                const SizedBox(height: PRSizes.spaceBtwSections),

                //--coupon field
                PRCouponCode(),
                const SizedBox(height: PRSizes.spaceBtwSections),

                //--Billing section
                PRRoundedContainer(
                  showBorder: true,
                  padding: const EdgeInsets.all(PRSizes.md),
                  backgroundColor: dark? PRColors.dark : PRColors.white,
                  child: Column(
                    children: [
                      //Pricing
                      PRBillingAmountSection(),
                      const SizedBox(height: PRSizes.spaceBtwItems),

                      //Divider
                      const Divider(),
                      const SizedBox(height: PRSizes.spaceBtwItems),
                      
                      //Payment method
                      PRBillingPaymentSection(),
                      const SizedBox(height: PRSizes.spaceBtwItems),

                      //Address
                      PRBillingAddressSection()
                    ],
                  ),
 
                )

              ],
            ),
          ),
        ),

        //checkoutbutton
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(PRSizes.defaultSpace),
          child: ElevatedButton(
          onPressed: ()=> Get.to(() => SuccessScreen(
            image: PRImages.successfulPayment,
            title: "Payment Success!",
            subTitle: "Your Item will be Shipped Soon",
            onPressed: () => Get.offAll(() =>  NavigationMenu()),
          )), 
          child: Text('Checkout ₹175')),
        ),
    );
  }
}

