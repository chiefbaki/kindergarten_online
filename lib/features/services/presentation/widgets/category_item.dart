import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kindergarten_online/core/config/routes/app_router.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/features/services/presentation/blocs/category_bloc/category_bloc.dart';
import 'package:kindergarten_online/features/widgets/custom_progress_indicator.dart';
import 'package:kindergarten_online/features/widgets/text_with_arrow.dart';

class CategoryItem extends StatefulWidget {
  const CategoryItem({super.key});

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  // @override
  // void initState() {
  //   super.initState();
  //   context.read<ProductBloc>().add(const ProductEvent.getProduct());
  // }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
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
                                id: entity.result?[index].id.toString(),
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
