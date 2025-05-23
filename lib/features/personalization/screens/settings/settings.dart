import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce/common/widgets/layout/list_tiles/settings_menu_tile.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/personalization/screens/address/user_address.dart';
import 'package:ecommerce/features/shop/screens/order/order.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/layout/list_tiles/user_profile_tile.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../authentication/screens/login/login.dart';
import '../profile/profile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // -- Header
            PRPrimaryHeaderContainer(
              child: Column(
                children: [
                  //Appbar
                  PRAppBar(
                    title: Text('Account',
                    style: Theme.of(context).textTheme.headlineMedium!.apply(color: PRColors.white))),
                    const SizedBox(height: PRSizes.spaceBtwSections),

                  //Profile card
                  PRUserProfileTile(onPressed: () => Get.to(() => ProfileScreen())),
                  const SizedBox(height: PRSizes.spaceBtwSections),
                  
                ],
              ),
              ),

            // -- Body
            Padding(padding: const EdgeInsets.all(PRSizes.defaultSpace),
            child: Column(
              children: [
                //Account settings
                PRSectionHeading(title: 'Account Settings', showActionButton: false),
                SizedBox(height: PRSizes.spaceBtwItems),

                PRSettingsMenuTile(
                  icon: Iconsax.safe_home, 
                  title: 'My Address', 
                  subtitle: 'Set Delivery Address',
                  onTap: () => Get.to(() => UserAddressScreen())),
                  PRSettingsMenuTile(
                  icon: Iconsax.shopping_cart, 
                  title: 'My Cart', 
                  subtitle: 'Add/Remove products and move to checkout',
                  onTap: (){}),
                    PRSettingsMenuTile(
                  icon: Iconsax.bag_tick, 
                  title: 'My Orders', 
                  subtitle: 'In-Progress and Completed orders',
                  onTap: () => Get.to(() => const OrderScreen())),
                    PRSettingsMenuTile(
                  icon: Iconsax.bank, 
                  title: 'Bank Account', 
                  subtitle: 'Registered Bank Account',
                  onTap: (){}),
                    PRSettingsMenuTile(
                  icon: Iconsax.discount_shape, 
                  title: 'My Coupons', 
                  subtitle: 'List of all the discounted coupons',
                  onTap: (){}),
                    PRSettingsMenuTile(
                  icon: Iconsax.notification, 
                  title: 'Notifications', 
                  subtitle: 'Set notification message',
                  onTap: (){}),
                    PRSettingsMenuTile(
                  icon: Iconsax.security_card, 
                  title: 'Account Privacy', 
                  subtitle: 'Manage data usage and connected accounts',
                  onTap: (){}),

                  //App settings
                  SizedBox(height: PRSizes.spaceBtwSections),
                  PRSectionHeading(title: "App Settings", showActionButton: false),
                  SizedBox(height: PRSizes.spaceBtwItems),
                  PRSettingsMenuTile(icon: Iconsax.document_upload, 
                  title: 'Load Data', 
                  subtitle: 'Upload Data to your cloud Firebase'),

                  PRSettingsMenuTile(
                    icon: Iconsax.location, 
                    title: 'Geolocation', 
                    subtitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value){})),
                   PRSettingsMenuTile(
                    icon: Iconsax.security_user, 
                    title: 'Safe Mode', 
                    subtitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value){})),
                   PRSettingsMenuTile(
                    icon: Iconsax.image, 
                    title: 'HD Image Quality', 
                    subtitle: 'Set image quality to be seen',
                    trailing: Switch(value: true, onChanged: (value){})),

                  //logout button
                  const SizedBox(height: PRSizes.spaceBtwSections),
                 SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () async {
                        await FirebaseAuth.instance.signOut();
                        Get.offAll(() => const LoginScreen()); // or WelcomeScreen
                      },
                      child: const Text("Logout"),
                    ),
                  ),

                  
                  const SizedBox(height: PRSizes.spaceBtwSections * 2),
                
              ],

            ),
            ),
          ],
        ),
      ),
    );
  }
}

