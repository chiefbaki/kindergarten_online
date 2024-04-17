import "dart:async";
import "package:dio/dio.dart";
import "package:flutter/foundation.dart";
import "package:flutter_dotenv/flutter_dotenv.dart";

class DioSettings {
  late String baseUrl;
  DioSettings() {
    unawaited(setup());
    baseUrl = dotenv.env["API_URL"] ?? "";
  }

  Dio dio = Dio(
    BaseOptions(
      baseUrl: "http://84.54.12.206/ru/",
      contentType: "application/json",
      headers: {
        "Accept": "application/json",
      },
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
    ),
  );

  Future<void> setup() async {
    final Interceptors interceptors = dio.interceptors;

    interceptors.clear();

    final LogInterceptor logInterceptor = LogInterceptor(
      requestBody: true,
      responseBody: true,
    );

    final QueuedInterceptorsWrapper headerInterceptors =
        QueuedInterceptorsWrapper(
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) =>
          handler.next(options),
      onError: (DioException error, ErrorInterceptorHandler handler) {
        handler.next(error);
      },
      onResponse: (Response response, ResponseInterceptorHandler handler) =>
          handler.next(response),
    );
    interceptors.addAll([if (kDebugMode) logInterceptor, headerInterceptors]);
  }
}
