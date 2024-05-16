import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_progress_indicator.dart';

class CachedImage extends StatelessWidget {
  final String url;
  final double width;
  final double height;
  final BoxFit fit;
  const CachedImage(
      {super.key,
      required this.url,
      required this.width,
      required this.height,
      required this.fit});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: fit,
      width: width.w,
      height: height.h,
      fadeInCurve: Curves.bounceIn,
      imageUrl: url,
      placeholder: (context, url) => const CustomProgressIndicator(),
    );
  }
}
