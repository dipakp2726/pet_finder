// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String _$getPetListHash() => r'1ff46e97997b4e6cd9a5b3b8e3c286900196c373';

/// See also [getPetList].
class GetPetListProvider extends AutoDisposeFutureProvider<PetList> {
  GetPetListProvider({
    required this.page,
  }) : super(
          (ref) => getPetList(
            ref,
            page: page,
          ),
          from: getPetListProvider,
          name: r'getPetListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getPetListHash,
        );

  final int page;

  @override
  bool operator ==(Object other) {
    return other is GetPetListProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef GetPetListRef = AutoDisposeFutureProviderRef<PetList>;

/// See also [getPetList].
final getPetListProvider = GetPetListFamily();

class GetPetListFamily extends Family<AsyncValue<PetList>> {
  GetPetListFamily();

  GetPetListProvider call({
    required int page,
  }) {
    return GetPetListProvider(
      page: page,
    );
  }

  @override
  AutoDisposeFutureProvider<PetList> getProviderOverride(
    covariant GetPetListProvider provider,
  ) {
    return call(
      page: provider.page,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'getPetListProvider';
}
