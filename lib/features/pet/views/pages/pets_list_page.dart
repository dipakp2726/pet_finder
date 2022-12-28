import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
      body: const PetList(),
    );
  }
}
