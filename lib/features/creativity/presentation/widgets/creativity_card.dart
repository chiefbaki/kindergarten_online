import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kindergarten_online/features/creativity/presentation/bloc/creativity_bloc/creativity_bloc.dart';
import 'package:kindergarten_online/features/creativity/presentation/widgets/creativity_item.dart';

class CreativityCard extends StatelessWidget {
  const CreativityCard({
    super.key,
    required this.textStyle,
  });

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreativityBloc, CreativityState>(
      builder: (context, state) {
        return state.when(
            initial: () => const SizedBox(),
            loading: () => const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
            success: (
              entity,
            ) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: entity.count,
                itemBuilder: (_, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: CreativityItem(
                    textStyle: textStyle,
                    image: entity.results?[index].img ?? "",
                    name: entity.results?[index].name ?? "",
                  ),
                ),
              );
            },
            failure: (e) => Text(e));
      },
    );
  }
}
