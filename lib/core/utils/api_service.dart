import 'package:dio/dio.dart';

class ApiServices{
  static final Dio _dio=Dio(
    BaseOptions(
      baseUrl: 'https://www.googleapis.com/books/v1/',
    ),
  );
  static Future<Response>get({required String endPoint})async{
    var response = await _dio.get(endPoint);
    return response;
  }
}