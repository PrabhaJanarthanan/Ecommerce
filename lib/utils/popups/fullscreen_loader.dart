import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/widgets/loaders/animation_loader.dart';

class PRFullScreenLoader{

  static void openLoadingDialog(String text, String animation){
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false, 
      builder: (_) => PopScope(
        canPop: false,
        child: Container(
          color: PRHelperFunctions.isDarkMode(Get.context!) ? PRColors.dark : PRColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                //const SizedBox(height: 250),
                PRAnimationLoaderWidget(text: text, animation: animation),
              ],
            ),
          ),
        )
      )
    );
  }

  //Stop the current loading dialog
  //This method does not return anything
  static stopLoading(){
    Navigator.of(Get.overlayContext!).pop(); 
  }
}



// static void openLoadingDialog(String text, String animation){
//   showDialog(
//     context: Get.overlayContext!,
//     barrierDismissible: false,
//     builder: (_) => PopScope(
//       canPop: false,
//       child: Container(
//         color: PRHelperFunctions.isDarkMode(Get.context!) ? PRColors.dark : PRColors.white,
//         width: double.infinity,
//         height: double.infinity,
//         child: Center(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               PRAnimationLoaderWidget(text: text, animation: animation),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }
