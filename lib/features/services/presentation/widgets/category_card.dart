import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kindergarten_online/core/config/routes/app_router.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/features/services/domain/entities/product_entity.dart';
import 'package:kindergarten_online/features/services/presentation/widgets/favorite_btn.dart';

class CategoryCard extends StatefulWidget {
  final ProductResultEntity entity;
  const CategoryCard({
    super.key,
    required this.textStyle,
    required this.entity,
  });

  final TextTheme textStyle;

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.push(ProductDetailRoute(results: widget.entity));
      },
      child: Container(
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
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.entity.price ?? "",
                    style: widget.textStyle.displaySmall!
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
                style: widget.textStyle.displayLarge!
                    .copyWith(color: AppColors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
