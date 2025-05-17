import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PRAppBar(
        showBackArrow: true,
        title: Text('Add New Address')),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration:  InputDecoration(
                      prefixIcon:Icon(Iconsax.user),
                      labelText: 'Name')),
                      SizedBox(height: PRSizes.spaceBtwInputFields),
                  TextFormField(
                    decoration:  InputDecoration(
                      prefixIcon:Icon(Iconsax.mobile),
                      labelText: 'Phone Number')),
                      SizedBox(height: PRSizes.spaceBtwInputFields),
                  Row(
                    children: [
                          Expanded(
                            child: TextFormField(
                              decoration:  InputDecoration(
                              prefixIcon:Icon(Iconsax.building_31),
                              labelText: 'Street')),
                          ),
                          SizedBox(width: PRSizes.spaceBtwInputFields),
                            Expanded(
                              child: TextFormField(
                              decoration:  InputDecoration(
                              prefixIcon:Icon(Iconsax.code),
                              labelText: 'Postal Code')),
                            ),

                    ],
                  ),
                  SizedBox(height: PRSizes.spaceBtwInputFields),
                  Row(
                    children: [
                          Expanded(
                            child: TextFormField(
                              decoration:  InputDecoration(
                              prefixIcon:Icon(Iconsax.building),
                              labelText: 'City')),
                          ),
                          SizedBox(width: PRSizes.spaceBtwInputFields),
                            Expanded(
                              child: TextFormField(
                              decoration:  InputDecoration(
                              prefixIcon:Icon(Iconsax.activity),
                              labelText: 'State')),
                            ),

                    ],
                  ),
                   SizedBox(height: PRSizes.spaceBtwInputFields),
                    TextFormField(
                    decoration:  InputDecoration(
                      prefixIcon:Icon(Iconsax.global),
                      labelText: 'Country')),
                  SizedBox(height: PRSizes.defaultSpace),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){},
                    child: Text('Save')),
                  )
                ],
              ),
            ),
          ),
        ),
    );
  }
}