import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_heaven/core/services/storage/storage_service_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'adoption_provider.g.dart';

/// Provider that stores adopted pets
@riverpod
class AdoptMe extends _$AdoptMe {
  final String adoptKey = 'adopt_key';

  @override
  List<int> build() {
    final storage = ref.watch(storageServiceProvider);

    final list = storage.get(adoptKey) as List<int>? ?? [];

    return list;
  }

  void adopt(int petId) {
    state.add(petId);

    ref.watch(storageServiceProvider).set(adoptKey, state);

    ref
      ..invalidateSelf()
      ..invalidate(isPetAdpotedProvider);
  }
}

/// provider that allows adopting pet
@riverpod
void adoptPet(Ref ref, {required int petId}) {
  return ref.watch(adoptMeProvider.notifier).adopt(petId);
}

/// provider to check whether given pet is adopted or not
@riverpod
bool isPetAdpoted(Ref ref, {required int petId}) {
  return ref.watch(adoptMeProvider).contains(petId);
}
