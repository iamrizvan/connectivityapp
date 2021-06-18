import 'package:connectivity/connectivity.dart';
import 'package:get/get.dart';

class InternetConnectivity extends GetxController {
  RxString internetStatus = RxString('Unknown');

  void updateConnectivityStatus() async {
    var _connectivityResult = await Connectivity().checkConnectivity();
    if (_connectivityResult == ConnectivityResult.none) {
      internetStatus.value = 'None';
    } else if (_connectivityResult == ConnectivityResult.mobile) {
      internetStatus.value = 'Mobile';
    } else if (_connectivityResult == ConnectivityResult.wifi) {
      internetStatus.value = 'WiFi';
    }
  }
}
