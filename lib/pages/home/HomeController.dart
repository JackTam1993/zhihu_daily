
import 'package:get/get.dart';

class HomeController extends GetxController {

  var count = 0.obs;
  increment() => count++;

  @override
  void onInit() {
    super.onInit();
    print('HomeController on init');

    count.value = 2;
  }
}