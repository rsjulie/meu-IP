import 'package:get/get.dart';
import 'package:meu_ip/modules/home/home_bindings.dart';
import 'package:meu_ip/modules/home/home_page.dart';

class AppRoutes {
  AppRoutes._();

  static final routes = [
    GetPage(
      name: '/home',
      page: HomePage.new,
      binding: HomeBindings(),
    ),
  ];
}
