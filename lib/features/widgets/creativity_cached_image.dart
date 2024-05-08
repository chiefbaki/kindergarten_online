import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/features/widgets/custom_progress_indicator.dart';
import 'package:photo_view/photo_view.dart';

class CreativityCachedImage extends StatelessWidget {
  final double width;
  final double height;
  final String img;
  const CreativityCachedImage(
      {super.key, required this.img, this.height = 150, this.width = 350});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
              transitionDuration: const Duration(milliseconds: 1),
              pageBuilder: (
                _,
                __,
                ___,
              ) =>
                  PhotoViewScreen(
                    img: img,
                  )),
        );
      },
      child: CachedNetworkImage(
        imageUrl: img,
        placeholder: (context, url) => const CustomProgressIndicator(),
        errorWidget: (context, url, error) => const Icon(
          Icons.error,
          color: AppColors.red,
        ),
        width: width.w,
        height: height.h,
        fit: BoxFit.cover,
      ),
    );
  }
}

class PhotoViewScreen extends StatelessWidget {
  final String img;
  const PhotoViewScreen({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PhotoView(
        onTapDown: (context, details, controllerValue) {
          Navigator.pop(context);
        },
        backgroundDecoration:
            BoxDecoration(color: AppColors.black.withOpacity(0.98)),
        imageProvider: CachedNetworkImageProvider(img),
      ),
    );
  }
}
