import "dart:async";
import "package:dio/dio.dart";
import "package:eco_shop/core/utils/constants/api_consts.dart";
import "package:flutter/foundation.dart";

class DioSettings {
  DioSettings() {
    unawaited(setup());
  }

  Dio dio = Dio(
    BaseOptions(
      baseUrl: ApiConts.apiPath,
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
    // final SharedPrefsImpl prefs = SharedPrefsImpl();
    // final String token = await prefs.getValue(key: AppConsts.accessToken);
    interceptors.clear();
    final LogInterceptor logInterceptor = LogInterceptor(
      requestBody: true,
      responseBody: true,
    );
    final QueuedInterceptorsWrapper headerInterceptors =
        QueuedInterceptorsWrapper(
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
        options.headers["Authorization"] =
            "eyJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiW1JPTEVfVVNFUl0iLCJzdWIiOiJpazUwOTMzMUBnbWFpbC5jb20iLCJpYXQiOjE3MTI1NjQ4MTksImV4cCI6MTcxMzQyODgxOX0.3M0B_6WQK51AUjSIDmm65kcW177mQsn9QtdBcF7Xi_E";
        return handler.next(options);
      },
      onError: (DioException error, ErrorInterceptorHandler handler) {
        handler.next(error);
      },
      onResponse: (Response response, ResponseInterceptorHandler handler) =>
          handler.next(response),
    );
    interceptors.addAll([if (kDebugMode) logInterceptor, headerInterceptors]);
  }
}
