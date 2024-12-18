import 'package:flutter/material.dart';
import 'package:pet_heaven/core/configs/styles/app_colors.dart';
import 'package:pet_heaven/core/widgets/app_cached_network_image.dart';
import 'package:pet_heaven/features/pet/model/photo.dart';
import 'package:pet_heaven/features/pet/views/pages/pet_images_slider_page.dart';

/// List widget of a Pet's Images
class PetImagesList extends StatelessWidget {
  /// Creates a new instance of [PetImagesList]
  const PetImagesList(
    this.media, {
    super.key,
  });

  /// Media list
  final List<Photo> media;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned(
          height: 100,
          left: 0,
          right: 0,
          bottom: 0,
          child: ColoredBox(color: AppColors.primary),
        ),
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
          child: Container(
            color: AppColors.secondary,
            padding: const EdgeInsetsDirectional.only(top: 20, bottom: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 40, end: 17),
                  child: Text(
                    'Images',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 240,
                  child: ListView.builder(
                    padding:
                        const EdgeInsetsDirectional.only(start: 40, end: 17),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: media.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsetsDirectional.only(end: 15),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push<PetImagesSliderPage>(
                              MaterialPageRoute<PetImagesSliderPage>(
                                builder: (context) => PetImagesSliderPage(
                                  images: media,
                                  initialImageIndex: index,
                                ),
                              ),
                            );
                          },
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: media[index].large == null
                                  ? Container()
                                  : AppCachedNetworkImage(
                                      imageUrl: media[index].large!,
                                      fit: BoxFit.cover,
                                    ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
