import 'package:pet_heaven/core/services/storage/storage_service_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'adoption_provider.g.dart';

/// Provider that allows adopting pets
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

@riverpod
void adoptPet(AdoptPetRef ref, {required int petId}) {
  return ref.watch(adoptMeProvider.notifier).adopt(petId);
}

@riverpod
bool isPetAdpoted(IsPetAdpotedRef ref, {required int petId}) {
  return ref.watch(adoptMeProvider).contains(petId);
}
