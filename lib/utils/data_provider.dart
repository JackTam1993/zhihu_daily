import 'package:zhihu_daily/utils/api.dart';
import 'package:zhihu_daily/utils/request.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

import '../model/article.dart';

abstract class DataProvider {
  static Future<List<Article>> getLatestArticle() async {
    Response<dynamic> response = await Request().get(Api.LATEST, {});

    List<dynamic> list = response.data['stories'];

    List<Article> articleList = [];
    for (int i = 0; i < list.length; i++) {
      Article article = Article(
          list[i].title, list[i].url, list[i].hint, list[i].images, list[i].id);
      articleList.add(article);
    }

    return articleList;
  }
}
