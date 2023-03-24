import 'package:dio/dio.dart';

enum DioMethod {
  get,
  post,
  put,
  delete
}

class Request {

  final dio = Dio();

  Future<Response> get(String url, Map<String, dynamic> queryParameters) async {
    Response response = await dio.get(url, queryParameters: queryParameters);
    return response;
  }
}