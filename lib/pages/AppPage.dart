import 'package:get/get.dart';
import 'package:zhihu_daily/pages/article/article_page.dart';

class AppPage {
  static final pages = [
    GetPage(
        name: Route.ARTICLE,
        page: () => const ArticlePage()
    )
  ];
}

class Route {
  static const ARTICLE = "/article";
}