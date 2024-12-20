import 'package:flutter/material.dart';
import 'package:pet_heaven/core/widgets/app_cached_network_image.dart';
import 'package:pet_heaven/features/pet/model/photo.dart';
import 'package:pet_heaven/features/pet/views/widgets/slider_action.dart';

/// Slider widget for Pet images
class PetImagesSliderPage extends StatefulWidget {
  /// Creates a new instance of [PetImagesSliderPage]
  const PetImagesSliderPage({
    required this.images,
    super.key,
    this.initialImageIndex = 0,
  });

  /// The initial image index to the slider should first open to
  final int initialImageIndex;

  /// The list of person images displayed in the slider
  final List<Photo> images;

  @override
  State<PetImagesSliderPage> createState() => PetImagesSliderPageState();
}

/// pet images slider widget state
class PetImagesSliderPageState extends State<PetImagesSliderPage> {
  /// Page controller attached to the slider [PageView] widget
  late final PageController pageController;

  /// Indicates if saving image to device gallery is loading
  bool isLoadingImageSave = false;

  @override
  void initState() {
    pageController = PageController(initialPage: widget.initialImageIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: pageController,
              itemCount: widget.images.length,
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  // width: MediaQuery.of(context).size.width,
                  child: widget.images[index].large == null
                      ? Container()
                      : InteractiveViewer(
                          child: Center(
                            child: AppCachedNetworkImage(
                              key: ValueKey(
                                '__pet_image_slider_${index}__',
                              ),
                              imageUrl: widget.images[index].large!,
                              fit: BoxFit.contain,
                              isLoaderShimmer: false,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                        ),
                );
              },
            ),
            PositionedDirectional(
              bottom: 0,
              start: 20,
              child: SliderAction(
                key: const ValueKey('__slider_previous_button__'),
                icon: const Icon(Icons.arrow_back),
                onTap: () {
                  pageController.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ),
            PositionedDirectional(
              bottom: 0,
              end: 20,
              child: SliderAction(
                key: const ValueKey('__slider_next_button__'),
                icon: const Icon(Icons.arrow_forward),
                onTap: () {
                  pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
