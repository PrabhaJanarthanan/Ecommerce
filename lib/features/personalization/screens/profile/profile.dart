import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/images/circular_images.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PRAppBar(
        showBackArrow: true,
        title: Text('Profile')
      ),
      //Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(PRSizes.defaultSpace),
          child: Column(
            children: [
              //profile pic
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    PRCircularImage(
                      image: PRImages.profile, width: 80, height: 80),
                      TextButton(onPressed: (){}, child: Text('Change the Profile Picture')),
                  ],
                ),
              ),
              SizedBox(height: PRSizes.spaceBtwItems/2),
              Divider(),
              SizedBox(height: PRSizes.spaceBtwItems),
              PRSectionHeading(title: 'Profile Information', showActionButton: false),
              SizedBox(height: PRSizes.spaceBtwItems),

              PRProfileMenu(onPressed: () {  }, title: 'Name',value: 'Prabha Janarthanan'),
              PRProfileMenu(onPressed: () {  }, title: 'User Name',value: 'Prabha Janarthanan'),
              
              SizedBox(height: PRSizes.spaceBtwItems),
              Divider(),
              SizedBox(height: PRSizes.spaceBtwItems),

              //Personal info
              PRSectionHeading(title: 'Personal Information', showActionButton: false),
              SizedBox(height: PRSizes.spaceBtwItems),

              PRProfileMenu(onPressed: (){}, title: 'User ID', value: '777', icon: Iconsax.copy,),
              PRProfileMenu(onPressed: (){}, title: 'E-Mail', value: 'prabhajanarthanan@gmail.com'),
              PRProfileMenu(onPressed: (){}, title: 'Phone Number', value: '+91 6382164040'),
              PRProfileMenu(onPressed: (){}, title: 'Gender', value: 'Female'),
              PRProfileMenu(onPressed: (){}, title: 'Date of Birth', value: '01 Aug 1990'),

              Divider(),
              SizedBox(height: PRSizes.spaceBtwItems),

              Center(
                child: TextButton(onPressed: (){}, 
                child: Text('Close Account', style: TextStyle(color: Colors.red))),
              )

            ],
          ),
      //Details
        ),
      ),
    );
  }
}

