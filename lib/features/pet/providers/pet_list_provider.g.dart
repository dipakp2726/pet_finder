// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getPetListHash() => r'1ff46e97997b4e6cd9a5b3b8e3c286900196c373';

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

/// provider that fetches paginated pet list
///
/// Copied from [getPetList].
@ProviderFor(getPetList)
const getPetListProvider = GetPetListFamily();

/// provider that fetches paginated pet list
///
/// Copied from [getPetList].
class GetPetListFamily extends Family<AsyncValue<PetList>> {
  /// provider that fetches paginated pet list
  ///
  /// Copied from [getPetList].
  const GetPetListFamily();

  /// provider that fetches paginated pet list
  ///
  /// Copied from [getPetList].
  GetPetListProvider call({
    required int page,
  }) {
    return GetPetListProvider(
      page: page,
    );
  }

  @override
  GetPetListProvider getProviderOverride(
    covariant GetPetListProvider provider,
  ) {
    return call(
      page: provider.page,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getPetListProvider';
}

/// provider that fetches paginated pet list
///
/// Copied from [getPetList].
class GetPetListProvider extends AutoDisposeFutureProvider<PetList> {
  /// provider that fetches paginated pet list
  ///
  /// Copied from [getPetList].
  GetPetListProvider({
    required int page,
  }) : this._internal(
          (ref) => getPetList(
            ref as GetPetListRef,
            page: page,
          ),
          from: getPetListProvider,
          name: r'getPetListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getPetListHash,
          dependencies: GetPetListFamily._dependencies,
          allTransitiveDependencies:
              GetPetListFamily._allTransitiveDependencies,
          page: page,
        );

  GetPetListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
  }) : super.internal();

  final int page;

  @override
  Override overrideWith(
    FutureOr<PetList> Function(GetPetListRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetPetListProvider._internal(
        (ref) => create(ref as GetPetListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<PetList> createElement() {
    return _GetPetListProviderElement(this);
  }

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetPetListRef on AutoDisposeFutureProviderRef<PetList> {
  /// The parameter `page` of this provider.
  int get page;
}

class _GetPetListProviderElement
    extends AutoDisposeFutureProviderElement<PetList> with GetPetListRef {
  _GetPetListProviderElement(super.provider);

  @override
  int get page => (origin as GetPetListProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
