import 'package:ecommerce/data/repositories/authentication/authentication_repository.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/popups/fullscreen_loader.dart';
import 'package:ecommerce/utils/popups/loaders.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../../utils/helpers/network_manager.dart';

class LoginController extends GetxController{

  //Variables
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    super.onInit();
    email.text = localStorage.read('REMEMBER_ME_EMAIL');
    password.text = localStorage.read('REMEMBER_ME_PASSWORD');
  }

  //Email and Password signin
  Future<void> emailAndPasswordSignIn() async {
    try{
      //Start Loading
      PRFullScreenLoader.openLoadingDialog('Logging you in', PRImages.successfulPayment);

      //Check Internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected){
        PRFullScreenLoader.stopLoading();
        return;
      }

      //Form validation
      if(!loginFormKey.currentState!.validate()){
        PRFullScreenLoader.stopLoading();
        return;
      }

      //Save data if rememberme is selected
      if(rememberMe.value){
        localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      }

      //Login user email and password authentication
      final userCredentials = await AuthenticationRepository.instance.loginWithEmailAndPassword(
        email.text.trim(),
        password.text.trim());

      //Remove loader
      PRFullScreenLoader.stopLoading();

      //Redirect 
      AuthenticationRepository.instance.screenRedirect();
    } catch(e){
      PRFullScreenLoader.stopLoading();
      PRLoaders.errorSnackBar(title: 'Oops!', message: e.toString());
    }

}
}