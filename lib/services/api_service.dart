import 'package:dio/dio.dart';

class ApiService {
  factory ApiService() => _singleton;

  ApiService._internal();

  final dio = createDio();

  static final _singleton = ApiService._internal();

  static Dio createDio() {
    final dio = Dio();

    return dio;
  }
}
