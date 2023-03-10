// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adoption_provider.dart';

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

String _$AdoptMeHash() => r'71405bf329aa23d375e902da5aa0a7cb87c6da63';

/// Provider that stores adopted pets
///
/// Copied from [AdoptMe].
final adoptMeProvider = AutoDisposeNotifierProvider<AdoptMe, List<int>>(
  AdoptMe.new,
  name: r'adoptMeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$AdoptMeHash,
);
typedef AdoptMeRef = AutoDisposeNotifierProviderRef<List<int>>;

abstract class _$AdoptMe extends AutoDisposeNotifier<List<int>> {
  @override
  List<int> build();
}

String _$adoptPetHash() => r'ea31f3dc883708e8ab2cc1b6defd92b8ae3e566e';

/// provider that allows adopting pet
///
/// Copied from [adoptPet].
class AdoptPetProvider extends AutoDisposeProvider<void> {
  AdoptPetProvider({
    required this.petId,
  }) : super(
          (ref) => adoptPet(
            ref,
            petId: petId,
          ),
          from: adoptPetProvider,
          name: r'adoptPetProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$adoptPetHash,
        );

  final int petId;

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

typedef AdoptPetRef = AutoDisposeProviderRef<void>;

/// provider that allows adopting pet
///
/// Copied from [adoptPet].
final adoptPetProvider = AdoptPetFamily();

class AdoptPetFamily extends Family<void> {
  AdoptPetFamily();

  AdoptPetProvider call({
    required int petId,
  }) {
    return AdoptPetProvider(
      petId: petId,
    );
  }

  @override
  AutoDisposeProvider<void> getProviderOverride(
    covariant AdoptPetProvider provider,
  ) {
    return call(
      petId: provider.petId,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'adoptPetProvider';
}

String _$isPetAdpotedHash() => r'1414116cd3eca18d0ab9346ed1a8f2c9d2c537e5';

/// provider to check whether given pet is adopted or not
///
/// Copied from [isPetAdpoted].
class IsPetAdpotedProvider extends AutoDisposeProvider<bool> {
  IsPetAdpotedProvider({
    required this.petId,
  }) : super(
          (ref) => isPetAdpoted(
            ref,
            petId: petId,
          ),
          from: isPetAdpotedProvider,
          name: r'isPetAdpotedProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$isPetAdpotedHash,
        );

  final int petId;

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

typedef IsPetAdpotedRef = AutoDisposeProviderRef<bool>;

/// provider to check whether given pet is adopted or not
///
/// Copied from [isPetAdpoted].
final isPetAdpotedProvider = IsPetAdpotedFamily();

class IsPetAdpotedFamily extends Family<bool> {
  IsPetAdpotedFamily();

  IsPetAdpotedProvider call({
    required int petId,
  }) {
    return IsPetAdpotedProvider(
      petId: petId,
    );
  }

  @override
  AutoDisposeProvider<bool> getProviderOverride(
    covariant IsPetAdpotedProvider provider,
  ) {
    return call(
      petId: provider.petId,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'isPetAdpotedProvider';
}
