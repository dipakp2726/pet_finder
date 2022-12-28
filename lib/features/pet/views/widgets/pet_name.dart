import 'package:flutter/material.dart';
import 'package:pet_heaven/core/configs/styles/app_colors.dart';

/// Widget for a Pet name with adaptive text size
class PetName extends StatelessWidget {
  /// Creates a new instance of [PetName]
  const PetName(
    this.petName, {
    super.key,
  });

  /// Pet name
  final String petName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 40,
        end: 100,
        top: 20,
        bottom: 15,
      ),
      child: Text(
        petName,
        style: Theme.of(context).textTheme.headline1!.copyWith(
              fontSize: petName.length > 10 ? 40 : 60,
              fontWeight: FontWeight.w400,
              color: AppColors.white,
            ),
      ),
    );
  }
}
