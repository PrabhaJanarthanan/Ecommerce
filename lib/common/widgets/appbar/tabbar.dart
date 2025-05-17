import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class PRTabBar extends StatelessWidget implements PreferredSizeWidget {
  //want clrfor tabbar.. wrap with material widget
  const PRTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = PRHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? PRColors.black : PRColors.white,
      child: TabBar(
        isScrollable: true,
        indicatorColor: PRColors.primaryColor,
        unselectedLabelColor: PRColors.dark,
        labelColor: dark ? PRColors.white : PRColors.primaryColor,
        tabs: tabs,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(PRDeviceUtils.getAppBarHeight());
}
