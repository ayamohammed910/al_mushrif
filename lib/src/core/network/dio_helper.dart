import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static void init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://staging.mushrifcoop.com/api/v3/',
        receiveDataWhenStatusError: true,
        headers: {
          'Accept': 'application/json',
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
      options: Options(
        headers: {
          'Accept': 'application/json',
        },
      ),
    );
  }
}
