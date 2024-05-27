import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/src/core/config/routes/app_router.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/features/services/presentation/blocs/category_bloc/category_bloc.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_progress_indicator.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/text_with_arrow.dart';

const double _paddingUnit = 5;

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
                padding: REdgeInsets.symmetric(
                    horizontal: _paddingUnit * 3, vertical: _paddingUnit * 3),
                child: ListView.builder(
                  itemCount: entity.count,
                  itemBuilder: (_, index) => Column(
                    children: [
                      TextWithArrow(
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
            failure: (error) => Center(child: Text(error)));
      },
    );
  }
}
