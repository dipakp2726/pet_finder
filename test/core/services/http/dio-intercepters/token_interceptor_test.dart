import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pet_heaven/core/services/http/interceptor/token_interceptor.dart';

import '../../../../test-utils/mocks.dart';

void main() {
  late TokenInterceptor interceptor;
  late MockStorageService storageService;

  setUp(() {
    storageService = MockStorageService();
    interceptor = TokenInterceptor(storageService);
  });

  group('TokenInterceptor', () {
    test('should add token to request headers', () {
      // Arrange
      final requestOptions = RequestOptions(path: 'path');
      final handler = RequestInterceptorHandler();
      when(() => storageService.get('token_key')).thenReturn('12345');

      // Act
      interceptor.onRequest(requestOptions, handler);

      // Assert
      expect(requestOptions.headers['Authorization'], 'Bearer 12345');
    });



  });
}
