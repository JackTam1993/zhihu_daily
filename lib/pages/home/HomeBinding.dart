
import 'package:get/get.dart';
import 'package:zhihu_daily/pages/home/HomeController.dart';

class HomeBinding implements Bindings {

  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
  }

}