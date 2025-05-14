import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../popups/loaders.dart';

class NetworkManager extends GetxController{
  static NetworkManager get instance => Get.find();

  final Connectivity _connectivity  = Connectivity();
  late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;
  final Rx<ConnectivityResult> _connectionStatus = ConnectivityResult.none.obs;

  // Initializing the network manager and setup a stream to continuously check the connection status

  @override
  void onInit() {
    super.onInit();
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  // update the connection status based on changes in connectivity and show a relevant popup for no internet connection
  Future<void> _updateConnectionStatus(List<ConnectivityResult> results) async {
    final result = results.isNotEmpty ? results.first : ConnectivityResult.none;
    _connectionStatus.value = result;
  
    if(_connectionStatus.value == ConnectivityResult.none){
      PRLoaders.warningSnackBar(title: 'No Internet Connection');
    }
  }

  // Check if the device is connected to the internet
  // Return true if connected, false otherwise
  Future<bool> isConnected() async {
    try {
      final result = await _connectivity.checkConnectivity();
      if (result == ConnectivityResult.none){
        return false;
      } else {
        return true;
      }
    } on PlatformException catch (_){
      return false;
    }
  }

  // Dispose or close the activity connection stream
  @override
  void onClose() {
    super.onClose();
    _connectivitySubscription.cancel();
  
  }
}