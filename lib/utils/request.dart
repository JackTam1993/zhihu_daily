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
    return dio.get(url, queryParameters: queryParameters);
  }
}