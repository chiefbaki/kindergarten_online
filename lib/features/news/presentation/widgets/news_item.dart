import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/features/news/presentation/cubits/news_cubit/news_cubit.dart';
import 'package:kindergarten_online/features/news/presentation/widgets/custom_list_tile.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({
    super.key,
    required this.textStyle,
  });

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        return state.when(
            initial: () => const SizedBox(),
            loading: () => const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
            success: (entity) {
              return ListView.separated(
                itemCount: entity.count ?? 0,
                itemBuilder: (_, index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: AppColors.navyBlue,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomListTile(
                        images: entity.results?[index].images?[index].img ?? "",
                        textStyle: textStyle,
                        entity: entity.results![index],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                  height: 10.h,
                ),
              );
            },
            failure: (error) => Text(error));
      },
    );
  }
}
