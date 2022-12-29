import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_heaven/core/configs/styles/app_colors.dart';
import 'package:pet_heaven/core/widgets/animate_in_effect.dart';
import 'package:pet_heaven/features/pet/providers/adoption_provider.dart';

class AdoptMeButton extends ConsumerStatefulWidget {
  const AdoptMeButton({
    super.key,
    required this.petId,
    required this.petName,
  });

  final int petId;
  final String petName;

  @override
  ConsumerState<AdoptMeButton> createState() => _AdoptState();
}

class _AdoptState extends ConsumerState<AdoptMeButton> {
  late ConfettiController _controllerCenter;

  @override
  void initState() {
    super.initState();

    _controllerCenter =
        ConfettiController(duration: const Duration(milliseconds: 200));
  }

  @override
  void dispose() {
    _controllerCenter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isAdopted = ref.watch(isPetAdpotedProvider(petId: widget.petId));

    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: SizedBox(
              height: 55,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // foregroundColor: AppColors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  textStyle: Theme.of(context).textTheme.headline2,
                ),
                onPressed: !isAdopted
                    ? () {
                        ref.read(AdoptPetProvider(petId: widget.petId));

                        _controllerCenter.play();
                        showSuccessDialog(context, widget.petName);
                      }
                    : null,
                child: Text(isAdopted ? 'Already Adopted' : 'Adopt Me'),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: ConfettiWidget(
            confettiController: _controllerCenter,
            numberOfParticles: 200,
            blastDirectionality: BlastDirectionality.explosive,

            shouldLoop: false,
            colors: const [
              Colors.green,
              Colors.blue,
              Colors.pink,
              Colors.orange,
              Colors.purple
            ], // manually specify the colors to be used
            // createParticlePath: drawStar, // define a custom shape/path.
          ),
        ),
      ],
    );
  }

  void showSuccessDialog(BuildContext context, String petName) {
    showDialog<void>(
      context: context,
      builder: (context) => AnimateInEffect(
        child: AlertDialog(
          title: Text(
            'Congratulations',
            style: Theme.of(context).textTheme.headline2,
          ),
          content: Text(
            'You’ve now adopted $petName',
            style: Theme.of(context).textTheme.headline4,
          ),
          actions: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(foregroundColor: AppColors.white),
              child: const Text('OK'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}
