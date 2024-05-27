import "dart:async";
import "package:auto_route/auto_route.dart";
import "package:dio/dio.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_dotenv/flutter_dotenv.dart";
import "package:kindergarten_online/src/core/config/routes/app_router.dart";
import "package:kindergarten_online/src/core/config/settings/dio_exception_handler.dart";
import "package:kindergarten_online/src/features/auth/data/dto/response/token_dto.dart";
import "package:kindergarten_online/src/features/auth/data/mappers/token_mapper.dart";
import "package:kindergarten_online/src/features/auth/domain/repositories/token_rep.dart";
import "package:logging/logging.dart";

class DioSettings {
  final TokenRepository _token;
  final Logger _log;

  DioSettings(this._token, this._log) {
    unawaited(setup());
  }

  final navigatorState = GlobalKey<NavigatorState>();

  final baseUrl = dotenv.env["API_URL"] ?? "";
  Dio dio = Dio(
    BaseOptions(
      contentType: "application/json",
      headers: {
        "Accept": "application/json",
      },
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
    ),
  );

  Future<void> setup() async {
    final Interceptors interceptors = dio.interceptors;
    // final token = await _token.getBearerToken();
    // final refreshToken = await _token.getToken();
    // debugPrint("BEARER $token");
    // debugPrint("REFRESH ${refreshToken?.refresh ?? ""}");
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
        options.headers["Authorization"] = "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzE2MzU0NzkwLCJpYXQiOjE3MTU3NDk5OTAsImp0aSI6IjExZTg3MDUwZjk1MDQ2YzU5ZWM5YjI3YzIwNTY0N2VhIiwidXNlcl9pZCI6Nn0.YnEKsNCuvL3D6G-NR5UUjf_ltIfQ3a8HkbXd3Mh1r18";
        options.baseUrl = baseUrl;
        return handler.next(options);
      },
      onError: (DioException error, ErrorInterceptorHandler handler) async {
        // refresh token when its error
        if (error.response?.statusCode == ResponseCode.unauthorised) {
          debugPrint("${error.response!.statusCode}");
          final newsAccessToken = await tokenRefresh();
          dio.options.headers["Authorization"] =
              "Bearer ${newsAccessToken.access}";
          AutoRouter.of(navigatorState.currentContext!)
              .replace(const MainRoute());
          _log.info(error.response!.statusCode);
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
    final path = dotenv.env["TOKEN_REFRESH"] ?? "";
    final Response response =
        await dio.post(path, data: {"refresh": refreshToken?.refresh ?? ""});
    _log.info("token refresh called");
    final entity = TokenDto.fromJson(response.data);
    _token.saveToken(entity: entity.toEntity());
    return entity;
  }
}
