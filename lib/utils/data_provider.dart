
import 'package:zhihu_daily/utils/api.dart';
import 'package:zhihu_daily/utils/request.dart';
import 'package:dio/dio.dart';

import '../entity/story.dart';

abstract class DataProvider {

  static Future<Response> getLatestArticle() async {
    Response<dynamic> response = await Request().get(Api.LATEST, {});

    return response;
  }

  static Future<Response> getArticleDetail(int articleId) async {
    print('request article id ${articleId.toString()}');
    final response = await Request().get("${Api.DETAIL}${articleId.toString()}", {});

    return response;
  }

}