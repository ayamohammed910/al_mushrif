import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static void init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://staging.mushrifcoop.com/api/v3/',
        receiveDataWhenStatusError: true,
        headers: {'Accept': 'application/json'},
      ),
    );

    dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        logPrint: (obj) {
          print("DIO LOG: $obj");
        },
      ),
    );
  }

  static Future<Response> post({
    required String url,
    required dynamic data,
  }) async {
    return await dio.post(
      url,
      data: data,
      options: Options(headers: {'Accept': 'application/json'}),
    );
  }
}
