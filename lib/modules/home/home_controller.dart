import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:network_info_plus/network_info_plus.dart';

class HomeController extends GetxController {
  final info = NetworkInfo();
  final RxString wifiIP = ''.obs;
  final Connectivity _connectivity = Connectivity();

  @override
  void onInit() async {
    super.onInit();
    wifiIP.value = await info.getWifiIP() ?? 'none';
    _connectivity.onConnectivityChanged.listen(_updateWifiIP);
  }

  _updateWifiIP(_) {
    info.getWifiIP().then((value) {
      wifiIP.value = value ?? 'none';
    });
  }
}
