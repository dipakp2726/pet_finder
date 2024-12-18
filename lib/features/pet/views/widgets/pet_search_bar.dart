import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_heaven/features/pet/providers/pet_name_provider.dart';

class PetSearchBar extends ConsumerWidget {
  const PetSearchBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: TextField(
        style: Theme.of(context).textTheme.headlineMedium,
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: 'Search...',
          suffixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
        onChanged: (val) {
          ref.read(petNameProvider.notifier).state = val.trim();
        },
      ),
    );
  }
}
