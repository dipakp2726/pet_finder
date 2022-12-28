import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_heaven/features/pet/model/pet_list.dart';
import 'package:pet_heaven/features/pet/providers/pet_list_provider.dart';

final petCountProvider = Provider.autoDispose<AsyncValue<int>>((ref) {
  return ref.watch(getPetListProvider(page: 0)).whenData(
        (PetList list) => list.pagination!.totalCount!,
      );
});
