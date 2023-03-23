import 'package:get/get.dart';
import 'package:zhihu_daily/pages/article/ArticlePage.dart';

class AppPage {
  static final pages = [
    GetPage(name: Route.ARTICLE, page: () => const ArticlePage())
  ];
}

class Route {
  static final ARTICLE = "/article";
}