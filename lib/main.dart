import 'package:ecommerce/app.dart';
import 'package:ecommerce/data/repositories_authentication/authentication_repositary.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';


import 'firebase_options.dart';

Future<void> main() async {

  // WidgetsBinding
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  //await splash until other items are loaded
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // Getx local storage
  await GetStorage.init();

  // Todo: Init Payment methods
  // Todo: Await native splash
 
  // Initialize Firebase authentication repository
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then(
    (FirebaseApp value) => Get.put(AuthenticationRepositary()),
  );

 // FlutterNativeSplash.remove();
 



  //Todo: Initialize authentication

  // load all the material design / Themes / Localization / Bindings
  runApp(const App());
}
