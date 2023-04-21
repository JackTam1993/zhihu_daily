import 'package:get/get.dart';
import 'package:zhihu_daily/pages/article/article_controller.dart';

class ArticleBinding implements Bindings {

  @override
  void dependencies() {
    Get.lazyPut<ArticleController>(() => ArticleController(), fenix: true);
  }

}