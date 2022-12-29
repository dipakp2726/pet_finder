import 'package:flutter/material.dart';
import 'package:pet_heaven/features/pet/views/widgets/pet_list.dart';

import 'package:pet_heaven/features/pet/views/widgets/pet_search_bar.dart';

/// Widget for the pet list page
class PetListPage extends StatelessWidget {
  /// Creates a new instance of [PetListPage]
  const PetListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Adopt Pet'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.dark_mode),
            ),
            const Padding(
              padding: EdgeInsets.all(8),
              child: CircleAvatar(),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: const [
              PetSearchBar(),
              Expanded(
                child: PetList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
