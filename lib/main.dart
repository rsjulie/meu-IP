import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meu_ip/bindings/application_bindings.dart';
import 'package:meu_ip/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Objetivo',
      initialBinding: ApplicationBindings(),
      initialRoute: '/home',
      getPages: AppRoutes.routes,
    );
  }
}
