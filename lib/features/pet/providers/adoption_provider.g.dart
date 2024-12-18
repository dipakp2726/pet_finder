// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adoption_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$adoptPetHash() => r'ea31f3dc883708e8ab2cc1b6defd92b8ae3e566e';

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

/// provider that allows adopting pet
///
/// Copied from [adoptPet].
@ProviderFor(adoptPet)
const adoptPetProvider = AdoptPetFamily();

/// provider that allows adopting pet
///
/// Copied from [adoptPet].
class AdoptPetFamily extends Family<void> {
  /// provider that allows adopting pet
  ///
  /// Copied from [adoptPet].
  const AdoptPetFamily();

  /// provider that allows adopting pet
  ///
  /// Copied from [adoptPet].
  AdoptPetProvider call({
    required int petId,
  }) {
    return AdoptPetProvider(
      petId: petId,
    );
  }

  @override
  AdoptPetProvider getProviderOverride(
    covariant AdoptPetProvider provider,
  ) {
    return call(
      petId: provider.petId,
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
  String? get name => r'adoptPetProvider';
}

/// provider that allows adopting pet
///
/// Copied from [adoptPet].
class AdoptPetProvider extends AutoDisposeProvider<void> {
  /// provider that allows adopting pet
  ///
  /// Copied from [adoptPet].
  AdoptPetProvider({
    required int petId,
  }) : this._internal(
          (ref) => adoptPet(
            ref as AdoptPetRef,
            petId: petId,
          ),
          from: adoptPetProvider,
          name: r'adoptPetProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$adoptPetHash,
          dependencies: AdoptPetFamily._dependencies,
          allTransitiveDependencies: AdoptPetFamily._allTransitiveDependencies,
          petId: petId,
        );

  AdoptPetProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.petId,
  }) : super.internal();

  final int petId;

  @override
  Override overrideWith(
    void Function(AdoptPetRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AdoptPetProvider._internal(
        (ref) => create(ref as AdoptPetRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        petId: petId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<void> createElement() {
    return _AdoptPetProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AdoptPetProvider && other.petId == petId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, petId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AdoptPetRef on AutoDisposeProviderRef<void> {
  /// The parameter `petId` of this provider.
  int get petId;
}

class _AdoptPetProviderElement extends AutoDisposeProviderElement<void>
    with AdoptPetRef {
  _AdoptPetProviderElement(super.provider);

  @override
  int get petId => (origin as AdoptPetProvider).petId;
}

String _$isPetAdpotedHash() => r'1414116cd3eca18d0ab9346ed1a8f2c9d2c537e5';

/// provider to check whether given pet is adopted or not
///
/// Copied from [isPetAdpoted].
@ProviderFor(isPetAdpoted)
const isPetAdpotedProvider = IsPetAdpotedFamily();

/// provider to check whether given pet is adopted or not
///
/// Copied from [isPetAdpoted].
class IsPetAdpotedFamily extends Family<bool> {
  /// provider to check whether given pet is adopted or not
  ///
  /// Copied from [isPetAdpoted].
  const IsPetAdpotedFamily();

  /// provider to check whether given pet is adopted or not
  ///
  /// Copied from [isPetAdpoted].
  IsPetAdpotedProvider call({
    required int petId,
  }) {
    return IsPetAdpotedProvider(
      petId: petId,
    );
  }

  @override
  IsPetAdpotedProvider getProviderOverride(
    covariant IsPetAdpotedProvider provider,
  ) {
    return call(
      petId: provider.petId,
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
  String? get name => r'isPetAdpotedProvider';
}

/// provider to check whether given pet is adopted or not
///
/// Copied from [isPetAdpoted].
class IsPetAdpotedProvider extends AutoDisposeProvider<bool> {
  /// provider to check whether given pet is adopted or not
  ///
  /// Copied from [isPetAdpoted].
  IsPetAdpotedProvider({
    required int petId,
  }) : this._internal(
          (ref) => isPetAdpoted(
            ref as IsPetAdpotedRef,
            petId: petId,
          ),
          from: isPetAdpotedProvider,
          name: r'isPetAdpotedProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$isPetAdpotedHash,
          dependencies: IsPetAdpotedFamily._dependencies,
          allTransitiveDependencies:
              IsPetAdpotedFamily._allTransitiveDependencies,
          petId: petId,
        );

  IsPetAdpotedProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.petId,
  }) : super.internal();

  final int petId;

  @override
  Override overrideWith(
    bool Function(IsPetAdpotedRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: IsPetAdpotedProvider._internal(
        (ref) => create(ref as IsPetAdpotedRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        petId: petId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<bool> createElement() {
    return _IsPetAdpotedProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is IsPetAdpotedProvider && other.petId == petId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, petId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin IsPetAdpotedRef on AutoDisposeProviderRef<bool> {
  /// The parameter `petId` of this provider.
  int get petId;
}

class _IsPetAdpotedProviderElement extends AutoDisposeProviderElement<bool>
    with IsPetAdpotedRef {
  _IsPetAdpotedProviderElement(super.provider);

  @override
  int get petId => (origin as IsPetAdpotedProvider).petId;
}

String _$adoptMeHash() => r'71405bf329aa23d375e902da5aa0a7cb87c6da63';

/// Provider that stores adopted pets
///
/// Copied from [AdoptMe].
@ProviderFor(AdoptMe)
final adoptMeProvider =
    AutoDisposeNotifierProvider<AdoptMe, List<int>>.internal(
  AdoptMe.new,
  name: r'adoptMeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$adoptMeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AdoptMe = AutoDisposeNotifier<List<int>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
