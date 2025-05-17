import 'package:ecommerce/data/repositories/authentication/authentication_repository.dart';
import 'package:ecommerce/data/repositories/user/user_repository.dart';
import 'package:ecommerce/features/personalization/models/user_model.dart';
import 'package:ecommerce/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/helpers/network_manager.dart';
import '../../../../utils/popups/fullscreen_loader.dart';
import '../../screens/signup/email_verification.dart';

class SignupController extends GetxController{
  static SignupController get instance => Get.find();

  // Variables
  final hidePassword = true.obs;
  final privacyCheckbox = true.obs;
  final email = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final password = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();


  //--Signup

  void signup() async {
    try{

      // Start Loading
      PRFullScreenLoader.openLoadingDialog('We are Processing your Information', PRImages.successfulPayment);

      // Check internet activity
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected){

        //Remove loader
        PRFullScreenLoader.stopLoading();
        return;
      }

      // Form Validation
      if(!signupFormKey.currentState!.validate()){

        //Remove loader
        PRFullScreenLoader.stopLoading();
        return;
      }

      // Privacy Policy check
      if(!privacyCheckbox.value){
        PRLoaders.warningSnackBar(title: 'Accept the Privacy Policy',
        message: 'To create an account, you must have to Read and accept the Privacy Policy');
        return;
      }

      // Register user in the firebase Authentication and Save user data in the firestore
      final userCredential = await AuthenticationRepository.instance.registerWithEmailAndPassword(email.text.trim(), password.text.trim(),);

      // Save Authenticated user data in the Firebase Firestore
      final newUser = UserModel(
        id: userCredential.user!.uid, 
        firstName: firstName.text.trim(), 
        lastName: lastName.text.trim(), 
        userName: userName.text.trim(), 
        email: email.text.trim(), 
        phoneNumber: phoneNumber.text.trim(), 
        profilePicture: '');

        final userRepository = Get.put(UserRepository());
        await userRepository.saveUserRecord(newUser);

      // Remove loader
      PRFullScreenLoader.stopLoading();


      // Show success message
      PRLoaders.successSnackBar(title: 'Congratulations!', message: 'Your Account has been Created. Verify the Email to Continue.');

      // Move to Verify Email screen
      Get.to(()=>  EmailVerificationScreen(email: email.text.trim()));
    } catch(e){
       // Remove loader
      PRFullScreenLoader.stopLoading(); 

      // Show Error to the user
      PRLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } 
  }

}