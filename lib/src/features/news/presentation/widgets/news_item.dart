import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/features/news/presentation/bloc/news_bloc.dart';
import 'package:kindergarten_online/src/features/news/presentation/widgets/custom_list_tile.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBloc, NewsState>(
      builder: (context, state) {
        return state.when(
            initial: () => const SizedBox(),
            loading: () => const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
            success: (entity) {
              return ListView.separated(
                itemCount: entity.results!.length,
                itemBuilder: (_, index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: AppColors.navyBlue,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: REdgeInsets.all(8.0),
                      child: CustomListTile(
                        images: entity.results![index].images!.first.img ?? "",
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
