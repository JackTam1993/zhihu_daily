import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'HomeController.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController c = Get.put(HomeController());

    return Scaffold(
      body: GetBuilder<HomeController>(
          builder: (_) {
            return Obx(() => Text("${c.count}"));
          }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => c.increment(),
        child: const Icon(Icons.navigation),
      ),
    );
  }}