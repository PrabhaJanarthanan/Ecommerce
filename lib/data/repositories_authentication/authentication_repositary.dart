import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepositary extends GetxController{
  static AuthenticationRepositary get instance => Get.find();

  // Variables
  final deviceStorage = GetStorage();

  // Call from main.dart on app start
  @override
  void onReady(){
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  // Function to show relevant screen
  screenRedirect() async {
    // Local storage
    if(kDebugMode){
      print('======== Get Storage ========');
      print(deviceStorage.read('IsFirstTime'));
    }

    deviceStorage.writeIfNull('IsFirstTime', true);
    deviceStorage.read('IsFirstTime') != true ? Get.offAll(() => const LoginScreen())
      : Get.offAll(const OnBoardingScreen());
  }
}