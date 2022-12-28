import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_heaven/core/configs/styles/app_colors.dart';
import 'package:pet_heaven/features/pet/providers/pet_name_provider.dart';
import 'package:pet_heaven/features/pet/views/widgets/pet_list.dart';

/// Widget for the pet list page
class PetListPage extends StatelessWidget {
  /// Creates a new instance of [PetListPage]
  const PetListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_alert),
          ),
          const CircleAvatar(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: const [
            SearchBar(),
            Expanded(
              child: PetList(),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchBar extends ConsumerWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(50),
      ),
      child: TextField(
        style: Theme.of(context).primaryTextTheme.headline4,
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
