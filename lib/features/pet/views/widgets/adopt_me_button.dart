import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_heaven/core/configs/styles/app_colors.dart';
import 'package:pet_heaven/features/pet/providers/adoption_provider.dart';

class AdoptMeButton extends ConsumerWidget {
  const AdoptMeButton({
    required this.petId,
    super.key,
  });

  final int petId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isAdopted = ref.watch(isPetAdpotedProvider(petId: petId));

    return Padding(
      padding: const EdgeInsets.all(24),
      child: SizedBox(
        height: 55,
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: AppColors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            textStyle: Theme.of(context).textTheme.headline2,
          ),
          onPressed: !isAdopted
              ? () {
                  ref.read(AdoptPetProvider(petId: petId));

                  showSuccessDialog(context);
                }
              : null,
          child: const Text('Adopt Me'),
        ),
      ),
    );
  }

  void showSuccessDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'Congratulations',
          style: Theme.of(context).primaryTextTheme.headline2,
        ),
        content: Text(
          'Pet adopted Successfully',
          style: Theme.of(context).primaryTextTheme.headline4,
        ),
        actions: [
          ElevatedButton(
            child: const Text('OK'),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}
