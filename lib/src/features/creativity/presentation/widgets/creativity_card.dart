import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kindergarten_online/src/features/creativity/presentation/bloc/creativity_bloc/creativity_bloc.dart';
import 'package:kindergarten_online/src/features/creativity/presentation/widgets/creativity_item.dart';
import 'package:kindergarten_online/src/features/widgets/custom_progress_indicator.dart';

class CreativityCard extends StatelessWidget {
  const CreativityCard({
    super.key,
    required this.textStyle,
  });

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return SizedBox(
      height: height * 0.77,
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
                    textStyle: textStyle,
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
