import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/src/core/config/routes/app_router.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';
import 'package:kindergarten_online/src/features/services/domain/entities/product_entity.dart';
import 'package:kindergarten_online/src/features/services/presentation/widgets/favorite_btn.dart';

const double _paddingUnit = 5;

class CategoryCard extends StatefulWidget {
  final ProductResultEntity entity;
  const CategoryCard({
    super.key,
    required this.entity,
  });

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _goToProductDetail(context);
      },
      child: Container(
        padding: REdgeInsets.all(_paddingUnit * 2),
        decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    AppColors.black.withOpacity(0.4), BlendMode.colorBurn),
                image: NetworkImage(
                  widget.entity.images!.first.img ?? "",
                ),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.entity.price ?? "",
                  style: context.textTheme.displaySmall!
                      .copyWith(color: AppColors.white),
                ),
                FavoriteBtn(
                  onPressed: () {
                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
                  isSelected: isSelected,
                ),
              ],
            ),
            const Spacer(),
            Text(
              widget.entity.name ?? "",
              style: context.textTheme.displayLarge!
                  .copyWith(color: AppColors.white),
            )
          ],
        ),
      ),
    );
  }

  void _goToProductDetail(BuildContext context) {
    context.router.push(ProductDetailRoute(results: widget.entity));
  }
}
