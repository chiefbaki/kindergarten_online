import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';
import 'package:kindergarten_online/src/features/creativity/presentation/bloc/creativity_bloc/creativity_bloc.dart';
import 'package:kindergarten_online/src/features/creativity/presentation/widgets/creativity_item.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_progress_indicator.dart';

class CreativityCard extends StatelessWidget {
  const CreativityCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.77,
      child: BlocBuilder<CreativityBloc, CreativityState>(
        builder: (context, state) {
          return state.when(
              initial: () => const SizedBox(),
              loading: () => const CustomProgressIndicator(),
              success: (
                entity,
              ) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: entity.count,
                  itemBuilder: (_, index) => CreativityItem(
                    image: entity.results?[index].img ?? "",
                    name: entity.results?[index].name ?? "",
                  ),
                );
              },
              failure: (e) => Center(child: Text(e)));
        },
      ),
    );
  }
}
