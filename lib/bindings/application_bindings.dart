import 'package:get/get.dart';
import 'package:meu_ip/rest_client/rest_client.dart';

class ApplicationBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RestClient(), fenix: true);
  }
}
