import 'package:ecommerce/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/helpers/network_manager.dart';
import '../../../../utils/popups/fullscreen_loader.dart';

class SignupController extends GetxController{
  static SignupController get instance => Get.find();

  // Variables
  final email = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final password = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();


  //--Signup

  Future<void> signup() async {
    try{

      // Start Loading
      PRFullScreenLoader.openLoadingDialog('We are Processing your Information', PRImages.successfulPayment);

      // Check internet activity
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected){
        PRFullScreenLoader.stopLoading();
        return;
      }

      // Form Validation
      if(!signupFormKey.currentState!.validate()){
        PRFullScreenLoader.stopLoading();
        return;
      }

      // Privacy Policy check

      // Register user in the firebase Authentication and Save user data in the firestore

      // Save Authenticated user data in the Firebase Firestore

      // Show success message

      // Move to Verify Email screen
    } catch(e){
      // Show Error to the user
      PRLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      // Remove loader
      PRFullScreenLoader.stopLoading();
    }
  }

}