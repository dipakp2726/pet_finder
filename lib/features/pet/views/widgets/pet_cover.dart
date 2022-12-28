import 'package:flutter/material.dart';

import 'package:pet_heaven/core/configs/styles/ui_constants.dart';
import 'package:pet_heaven/core/widgets/app_cached_network_image.dart';

/// Widget for a Pet cover image
class PetCover extends StatelessWidget {
  /// Creates a new instance of [PetCover]
  const PetCover(
    this.coverUrl, {
    super.key,
    this.height = UIConstants.petListItemHeight,
  });

  /// Cover image url
  final String? coverUrl;

  /// Cover image height
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: coverUrl == null
          ? Image.asset(
              'assets/images/placeholder.png',
              fit: BoxFit.cover,
            )
          : AppCachedNetworkImage(
              imageUrl: coverUrl!,
            ),
    );
  }
}
