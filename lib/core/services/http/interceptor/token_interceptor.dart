import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:pet_heaven/core/configs/configs.dart';
import 'package:pet_heaven/core/services/storage/storage_service.dart';

class TokenInterceptor extends Interceptor {
  TokenInterceptor(this.storageService);

  @visibleForTesting
  final String tokenKey = 'token_key';

  final StorageService storageService;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = storageService.get(tokenKey);

    options.headers['Authorization'] = 'Bearer $token';

    return handler.next(options);
  }

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      log('❌ ❌ ❌ Auth token expired');

      final token = await refreshToken();

      await storageService.set(tokenKey, token);

      err.requestOptions.headers['Authorization'] = 'Bearer $token';

      return handler.resolve(await Dio().fetch(err.requestOptions));
    }

    super.onError(err, handler);
  }
}
@visibleForTesting
Future<String> refreshToken() async {
  const oauthPath = '${Configs.apiBaseUrl}/oauth2/token';
  final data = {
    'grant_type': 'client_credentials',
    'client_id': Configs.clientId,
    'client_secret': Configs.clientSecret
  };

  final res = await Dio().post<Map<String, dynamic>>(oauthPath, data: data);

  final token = res.data!['access_token'] as String;
  return token;
}
