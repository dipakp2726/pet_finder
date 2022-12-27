import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_heaven/core/services/storage/hive_storage_service.dart';
import 'package:pet_heaven/core/services/storage/storage_service.dart';

/// Provider that locates an [StorageService] interface to implementation
final storageServiceProvider = Provider<StorageService>(
  (_) => HiveStorageService(),
);
