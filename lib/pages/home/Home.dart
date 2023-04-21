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
              contentPadding: const EdgeInsets.all(8.0),
              leading: Hero(
                  tag: controller.storiesObx[index].id,
                  child: Image.network(controller.storiesObx[index].images[0])
              ),
              title: Text(controller.storiesObx[index].title),
              onTap: () => Get.toNamed('/article', arguments: controller.storiesObx[index].id),
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