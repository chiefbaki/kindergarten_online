import "dart:async";
import "package:dio/dio.dart";
import "package:flutter/foundation.dart";
import "package:flutter_dotenv/flutter_dotenv.dart";
import "package:kindergarten_online/core/config/settings/dio_exception_handler.dart";
import "package:kindergarten_online/features/auth/data/dto/response/token_dto.dart";
import "package:kindergarten_online/features/auth/data/mappers/token_mapper.dart";
import "package:kindergarten_online/features/auth/domain/repositories/token_rep.dart";

class DioSettings {
  final TokenRepository _token;

  DioSettings(
    this._token,
  ) {
    unawaited(setup());
  }

  final baseUrl = dotenv.env["API_URL"] ?? "";
  Dio dio = Dio(
    BaseOptions(
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
    final token = await _token.getBearerToken();
    final refreshToken = await _token.getToken();
    debugPrint("BEARER $token");
    debugPrint("REFRESH ${refreshToken.refresh}");
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
        options.headers["Authorization"] = await _token.getBearerToken();
        options.baseUrl = baseUrl;
        return handler.next(options);
      },
      onError: (DioException error, ErrorInterceptorHandler handler) async {
        // refresh token when its error
        if (error.response?.statusCode == ResponseCode.unauthorised) {
          final newsAccessToken = await tokenRefresh();
          dio.options.headers["Authorization"] =
              "Bearer ${newsAccessToken.access}";
          return handler.resolve(await dio.fetch(error.requestOptions));
        }
        return handler.next(error);
      },
      onResponse: (Response response, ResponseInterceptorHandler handler) =>
          handler.next(response),
    );
    interceptors.addAll([
      if (kDebugMode) logInterceptor,
      headerInterceptors,
    ]);
  }

  Future<TokenDto> tokenRefresh() async {
    final refreshToken = await _token.getToken();
    print(refreshToken.refresh);
    print(refreshToken.access);
    final path = dotenv.env["TOKEN_REFRESH"] ?? "";
    final Response response =
        await dio.post(path, data: {"refresh": refreshToken.refresh});
    final entity = TokenDto.fromJson(response.data);
    _token.saveToken(entity: entity.toEntity());
    return entity;
  }
}
