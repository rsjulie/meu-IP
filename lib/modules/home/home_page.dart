import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 15, 42),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Meu IP:',
              style: TextStyle(color: Colors.white, fontSize: 26),
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(() {
              return Text(
                '${controller.wifiIP}',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
              );
            }),
          ],
        ),
      ),
    );
  }
}
