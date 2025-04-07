import 'package:get/get.dart';
import 'package:network_info_plus/network_info_plus.dart';

class HomeController extends GetxController {
  final info = NetworkInfo();
  final RxString wifiIP = ''.obs;

  @override
  void onInit() async {
    super.onInit();
    wifiIP.value = await info.getWifiIP() ?? 'none';
  }
}
