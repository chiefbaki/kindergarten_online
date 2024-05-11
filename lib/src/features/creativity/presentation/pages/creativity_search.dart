import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/features/creativity/presentation/bloc/creativity_bloc/creativity_bloc.dart';
import 'package:kindergarten_online/src/features/creativity/presentation/widgets/creativity_item.dart';
import 'package:kindergarten_online/generated/l10n.dart';

class CustomSearch extends SearchDelegate {
  @override
  TextStyle? get searchFieldStyle => const TextStyle(
      fontSize: 18, fontWeight: FontWeight.w600, color: AppColors.black);

  @override
  TextInputAction get textInputAction => TextInputAction.next;

  @override
  double? get leadingWidth => 20;

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query =
                ''; //  When pressed here the query will be cleared from the search bar.
          },
          icon: const Icon(
            Icons.close,
            color: AppColors.black,
            size: 25,
          ))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
          context
              .read<CreativityBloc>()
              .add(const CreativityEvent.creativity());
        },
        icon: const Icon(
          Icons.arrow_back_ios,
          size: 20,
          color: AppColors.black,
        ));
  }

  @override
  Widget buildResults(BuildContext context) {
    context.read<CreativityBloc>().add(SearchCreativity(query: query));
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
      child: BlocBuilder<CreativityBloc, CreativityState>(
        builder: (context, state) {
          return state.when(
              initial: () => const SizedBox(),
              loading: () => const Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
              success: (entity) {
                return entity.results!.isNotEmpty
                    ? ListView.builder(
                        itemCount: entity.count,
                        itemBuilder: (_, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: CreativityItem(
                                textStyle: Theme.of(context).textTheme,
                                name: entity.results?[index].name ?? "",
                                image: entity.results?[index].img ?? ""),
                          );
                        })
                    : Center(
                        child: Text(
                          S.of(context).empty,
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(color: AppColors.black),
                        ),
                      );
              },
              failure: (error) => Text(error));
        },
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const SizedBox.shrink();
  }
}
