import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kindergarten_online/core/config/routes/app_router.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/core/utils/resources/resources.dart';
import 'package:kindergarten_online/features/services/presentation/widgets/favorite_btn.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.textStyle,
  });

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.push(const ProductDetailRoute());
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    AppColors.black.withOpacity(0.4), BlendMode.colorBurn),
                image: const AssetImage(
                  Imgs.rainbow,
                ),
                fit: BoxFit.fill),
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
                    "1600",
                    style: textStyle.displaySmall!
                        .copyWith(color: AppColors.white),
                  ),
                  FavoriteBtn(onPressed: () {}),
                ],
              ),
              const Spacer(),
              Text(
                "Ролики",
                style: textStyle.displayLarge!.copyWith(color: AppColors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}