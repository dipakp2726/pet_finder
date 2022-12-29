import 'package:flutter/material.dart';
import 'package:pet_heaven/core/widgets/app_cached_network_image.dart';

class PetAvatar extends StatelessWidget {
  const PetAvatar(
    this.avatarUrl, {
    super.key,
  });

  final String? avatarUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: avatarUrl == null
          ? Image.asset(
              'assets/images/placeholder.png',
              fit: BoxFit.cover,
              height: 90,
            )
          : AppCachedNetworkImage(
              imageUrl: avatarUrl!,
              height: 90,
            ),
    );
  }
}
