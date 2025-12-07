
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ConnectivityChecker {
  Future<bool> hasConnection() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    return !connectivityResult.contains(ConnectivityResult.none);
  }

  Future<bool> checkConnectivity() async {
    return hasConnection();
  }

  void observeConnection({
    required VoidCallback success,
    required VoidCallback failed,
  }) {
    Connectivity()
        .onConnectivityChanged
        .listen((List<ConnectivityResult> results) {
      if (results.contains(ConnectivityResult.none)) {
        failed();
      } else {
        success();
      }
    });
  }
}
