import 'dart:async';

import 'package:ecommerce/common/widgets/success_screen/success_screen.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/popups/loaders.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../../../data/repositories/authentication/authentication_repository.dart';
import '../../../../utils/constants/image_strings.dart';

class EmailVerificationController extends GetxController{
  static EmailVerificationController get instance => Get.find();

  //Send email whenever verification screen is appear and set timer for auto redirect

  @override
  void onInit() {
    sendEmailVerification();
    setTimerForAutoRedirect();
    checkEmailVerificationStatus();
    super.onInit();
  }

  //Send email verification link
  sendEmailVerification() async {
    try{
      await AuthenticationRepository.instance.sendEmailVerification();
      PRLoaders.successSnackBar(title: 'Email Sent', message: 'Please check your inbox and verify your email.');

    }catch(e){
      PRLoaders.errorSnackBar(title: 'Oops', message: e.toString());

    }
  }


  //Timer toautomatic redirect
  setTimerForAutoRedirect() async {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      
      await FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;
      if(user?.emailVerified ?? false){
        timer.cancel();
        Get.off(() => SuccessScreen(
          image: PRImages.emailVerification, 
          title: PRTexts.yourAccountCreatedTitle, 
          subTitle: PRTexts.yourAccountCreatedSubTitle,
        onPressed: () => AuthenticationRepository.instance.screenRedirect(),));
      }
    });
  }


  //Manually check if email is verified
  checkEmailVerificationStatus() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    if(currentUser != null && !currentUser.emailVerified) {
      Get.off(() => SuccessScreen(
        image: PRImages.emailVerification,
        title: PRTexts.yourAccountCreatedTitle,
        subTitle: PRTexts.yourAccountCreatedSubTitle,
        onPressed: () => AuthenticationRepository.instance.screenRedirect(),
      ));
      
    }
  }
}