import 'package:ecommerce/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'utils/constants/colors.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.light,
      theme: PRAppTheme.lightTheme,
      darkTheme: PRAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: PRColors.primaryColor, body: Center(
        child: CircularProgressIndicator(
          color: PRColors.white
        ),
      )),
    );
  }
}
