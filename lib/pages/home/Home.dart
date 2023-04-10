import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'HomeController.dart';

class Home extends GetView<HomeController> {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("知乎日报"),
      ),
      body: Obx(() => ListView.builder(
          itemCount: controller.storiesObx.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(controller.storiesObx[index].title)
            );
          }
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
        child: const Icon(Icons.navigation),
      ),
    );
  }}