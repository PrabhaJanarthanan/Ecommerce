import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/features/shop/screens/order/widgets/orders_list.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: PRAppBar(
        title: Text('My Orders',
        style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true
      ),
      body: Padding(
        padding: EdgeInsets.all(PRSizes.defaultSpace),

      //Orders
      child: PROrderListItems(),
      ),
    );
  }
}