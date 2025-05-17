import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:ecommerce/features/authentication/screens/signup/email_verification.dart';
import 'package:ecommerce/navigation_menu.dart';
import 'package:ecommerce/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:ecommerce/utils/exceptions/firebase_exceptions.dart';
import 'package:ecommerce/utils/exceptions/format_exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../utils/exceptions/platform_exceptions.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  // Variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

//  late final FirebaseAuth _auth;

 

  // Call from main.dart on app start
  @override
  void onReady(){
    FlutterNativeSplash.remove();
    //redirect to appropriate screen
    screenRedirect();
  }

//  @override
//   void onInit() {
//     super.onInit();
//     _auth = FirebaseAuth.instance;
//   }

  // Function to show relevant screen
  void screenRedirect() async {
    final user = _auth.currentUser;

    if(user != null){
      if(user.emailVerified){
        Get.offAll(() => const NavigationMenu());
      } else {
        Get.offAll(() => EmailVerificationScreen(email: _auth.currentUser?.email));
      }
    } else { 
    deviceStorage.writeIfNull('IsFirstTime', true);
    deviceStorage.read('IsFirstTime') != true ? Get.offAll(() => const LoginScreen()) //to login screen if not the first time
      : Get.offAll(const OnBoardingScreen()); // to onboarding screen if it is the first time

    }
    
  }

  /* ------------------------Email and Password Sign in ---------------------*/

  // Email Authentication - Sign in
  Future<UserCredential> loginWithEmailAndPassword(String email, String password) async {
    try{
      return await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch(e){
      throw PRFirebaseAuthException(e.code).message;
    } on FirebaseException catch(e){
      throw PRFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const PRFormatException();
    } on PlatformException catch (e){
      throw PRPlatformException(e.code).message;
    } catch (e){
      throw 'Something went wrong. Please try again.';
    }
  }




  // Email Authentication - Sign up
  Future<UserCredential> registerWithEmailAndPassword(String email, String password) async {
    try{
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch(e){
      throw PRFirebaseAuthException(e.code).message;
    } on FirebaseException catch(e){
      throw PRFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const PRFormatException();
    } on PlatformException catch (e){
      throw PRPlatformException(e.code).message;
    } catch (e){
      throw 'Something went wrong. Please try again.';
    }
  }

  // Email Verification - mail verification
  Future<void> sendEmailVerification() async {
    try{
      await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch(e){
      throw PRFirebaseAuthException(e.code).message;
    } on FirebaseException catch(e){
      throw PRFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const PRFormatException();
    } on PlatformException catch (e){
      throw PRPlatformException(e.code).message;
    } catch (e){
      throw 'Something went wrong. Please try again.';
    }
    
  }

  // ReAuthenticate 

  // Email Authentication - Reset Password


  /* ------------------------Social Sign in ---------------------*/

  // Google Sign in

  // Facebook Sign in


  /* ------------------------Anonymous Sign in ---------------------*/

  // Logout user - valid for any authentication
  Future<void> logout() async{
    try{
      await FirebaseAuth.instance.signOut();
      Get.offAll(() => const LoginScreen());
    } on FirebaseAuthException catch(e){
      throw PRFirebaseAuthException(e.code).message;
    } on FirebaseException catch(e){
      throw PRFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const PRFormatException();
    } on PlatformException catch (e){
      throw PRPlatformException(e.code).message;
    } catch (e){
      throw 'Something went wrong. Please try again.';

    }
  }

  // Delete user - remove user Auth and firestore account


}