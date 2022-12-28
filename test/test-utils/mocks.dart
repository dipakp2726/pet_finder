import 'package:flutter/material.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pet_heaven/core/services/http/http_service.dart';
import 'package:pet_heaven/core/services/storage/storage_service.dart';


class MockStorageService extends Mock implements StorageService {}


class MockHttpService extends Mock implements HttpService {}


class Listener<T> extends Mock {
  void call(T? previous, T value);
}

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

class MockRoute extends Mock implements Route<dynamic> {}

