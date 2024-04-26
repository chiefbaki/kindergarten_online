import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kindergarten_online/core/config/routes/app_router.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/features/services/presentation/cubits/category_cubit/category_cubit.dart';
import 'package:kindergarten_online/features/services/presentation/cubits/product_cubit/product_cubit.dart';
import 'package:kindergarten_online/features/widgets/custom_progress_indicator.dart';
import 'package:kindergarten_online/features/widgets/text_with_arrow.dart';

class CategoryItem extends StatefulWidget {
  const CategoryItem({super.key});

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  void initState() {
    super.initState();
    context.read<ProductCubit>().product();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) {
        return state.when(
            initial: () => const SizedBox(),
            loading: () => const CustomProgressIndicator(),
            success: (entity) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: ListView.builder(
                  itemCount: entity.count,
                  itemBuilder: (_, index) => Column(
                    children: [
                      TextWithArrow(
                          textStyle: Theme.of(context).textTheme,
                          name: entity.result?[index].name ?? "",
                          color: AppColors.black,
                          onPressed: () {
                            context.router.push(CategoryRoute(
                                title: entity.result?[index].name ?? ""));
                          }),
                    ],
                  ),
                ),
              );
            },
            failure: (error) => Text(error));
      },
    );
  }
}
