import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: PRAppBar(
        title: Text('My Orders',
        style: Theme.of(context).textTheme.headlineSmall),
      ),
    );
  }
}