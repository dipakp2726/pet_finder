import 'package:flutter/material.dart';
import 'package:pet_heaven/core/configs/styles/app_colors.dart';
import 'package:pet_heaven/features/pet/model/pet.dart';

/// Pet information widget
///
/// Contains Pet department and birthday info
class PetInfo extends StatelessWidget {
  /// Creates a new instance of [PetInfo]
  const PetInfo(
    this.pet, {
    super.key,
  });

  /// Pet object
  final Pet pet;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.secondary,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(50),
        ),
        child: Container(
          height: 120,
          padding: const EdgeInsetsDirectional.only(
            start: 40,
            end: 17,
            bottom: 20,
          ),
          color: Theme.of(context).scaffoldBackgroundColor,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              if (pet.gender != null)
                InfoBox(
                  title: 'Gender',
                  value: pet.gender!,
                ),
              if (pet.type != null)
                InfoBox(
                  title: 'Type',
                  value: pet.type!,
                ),
              if (pet.breeds != null)
                InfoBox(
                  title: 'Breed',
                  value: pet.breeds!.primary!,
                ),
              if (pet.age != null)
                InfoBox(
                  title: 'Age',
                  value: pet.age!,
                ),
              if (pet.size != null)
                InfoBox(
                  title: 'size',
                  value: pet.size!,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoBox extends StatelessWidget {
  const InfoBox({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minWidth: 80,
      ),
      height: 80,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(
            value,
            style: Theme.of(context).primaryTextTheme.headline4,
          ),
          const SizedBox(height: 8),
          Text(title),
        ],
      ),
    );
  }
}
