import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../images/circular_images.dart';

class PRUserProfileTile extends StatelessWidget {
  const PRUserProfileTile({
    super.key, required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: PRCircularImage(
        image: PRImages.profile,
        width: 50,
        height: 50,
        padding: 0,
        ),
      title: Text("Prabha Janarthanan", style: Theme.of(context).textTheme.headlineSmall!.apply(
        color: PRColors.white)),
      subtitle: Text("prabhajanarthanan@gmail.com", style: Theme.of(context).textTheme.bodyMedium!.apply(
        color: PRColors.white)),
      trailing: IconButton(onPressed: onPressed, icon: Icon(Iconsax.edit, color: PRColors.white)),
      
      
      
    );
  }
}