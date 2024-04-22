import "dart:async";
import "package:dio/dio.dart";
import "package:flutter/foundation.dart";
import "package:flutter_dotenv/flutter_dotenv.dart";
import "package:kindergarten_online/features/auth/data/dto/response/token_dto.dart";
import "package:kindergarten_online/features/auth/domain/usecases/get_token_usecase.dart";

class DioSettings {
  final GetTokenUseCase _useCase;
  late String baseUrl;
  DioSettings(this._useCase) {
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
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ),
  );

  Future<void> setup() async {
    final Interceptors interceptors = dio.interceptors;
    final TokenDto token = await _useCase.call();
    debugPrint("ACCESS TOKEN ${token.access}");

    interceptors.clear();

    final LogInterceptor logInterceptor = LogInterceptor(
      requestBody: true,
      responseBody: true,
    );

    final QueuedInterceptorsWrapper headerInterceptors =
        QueuedInterceptorsWrapper(
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
        options.headers["Authorization"] =
            "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzE0MzY3ODQxLCJpYXQiOjE3MTM3NjMwNDEsImp0aSI6IjVmZmZjMTU2MjkwMTRmYTc5M2I2YjFmZGIxOWMzMDc5IiwidXNlcl9pZCI6MX0.RmyBNI0MZi_hWQUei93vTfwXBRqwDTcVba8ZtUaNBoY";
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
