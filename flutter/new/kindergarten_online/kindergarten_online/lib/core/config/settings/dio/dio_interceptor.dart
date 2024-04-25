import "dart:async";
import "package:dio/dio.dart";
import "package:flutter/foundation.dart";
import "package:flutter_dotenv/flutter_dotenv.dart";
import "package:kindergarten_online/core/config/constants/api_urls.dart";
import "package:kindergarten_online/core/config/settings/dio/dio_exception_handler.dart";
import "package:kindergarten_online/features/auth/domain/repositories/token_rep.dart";

class DioSettings {
  final TokenRepository _bearerToken;
  late String baseUrl;
  DioSettings(this._bearerToken) {
    unawaited(setup());
    baseUrl = dotenv.env["API_URL"] ?? "";
  }

  Dio dio = Dio(
    BaseOptions(
      baseUrl: ApiUrls.baseUrl,
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
        requestHeader: true,
        responseHeader: true);

    final QueuedInterceptorsWrapper headerInterceptors =
        QueuedInterceptorsWrapper(
      onRequest:
          (RequestOptions options, RequestInterceptorHandler handler) async {
        options.headers["Authorization"] = await _bearerToken.getBearerToken();
        return handler.next(options);
      },
      onError: (DioException error, ErrorInterceptorHandler handler) {
        // refresh token when its error
        if (error.response?.statusCode == ResponseCode.UNAUTHORIZED) {
          "";
        }
        handler.next(error);
      },
      onResponse: (Response response, ResponseInterceptorHandler handler) =>
          handler.next(response),
    );
    interceptors.addAll([
      if (kDebugMode) logInterceptor,
      headerInterceptors,
    ]);
  }
}
