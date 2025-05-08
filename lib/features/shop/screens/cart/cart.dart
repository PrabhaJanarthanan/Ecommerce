
import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/features/shop/screens/cart/widgets/cart_items.dart' show PRCartItems;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/sizes.dart';
import '../checkout/checkout.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PRAppBar(
        showBackArrow: true,
        title: Text('Cart',
        style: Theme.of(context).textTheme.headlineSmall)),
        body: Padding(
          padding: const EdgeInsets.all(PRSizes.defaultSpace),

          //items in cart
          child: PRCartItems()
        ),

          //checkout button
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(PRSizes.defaultSpace),
          child: ElevatedButton(
          onPressed: ()=> Get.to(() => CheckOutScreen()), 
          child: Text('Checkout ₹175')),
        ),
        
      
    );
  }
}



