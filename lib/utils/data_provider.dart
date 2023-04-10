
import 'package:zhihu_daily/utils/api.dart';
import 'package:zhihu_daily/utils/request.dart';
import 'package:dio/dio.dart';

abstract class DataProvider {

  static Future<Response> getLatestArticle() async {
    Response response = await Request().get(Api.LATEST, {});

    return response;
  }

}