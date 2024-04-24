import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kindergarten_online/features/creativity/presentation/cubits/creativity_cubit/creativity_cubit.dart';
import 'package:kindergarten_online/features/creativity/presentation/widgets/creativity_card.dart';
import 'package:kindergarten_online/features/widgets/custom_scaffold.dart';
import 'package:kindergarten_online/features/widgets/nav_bar.dart';
import 'package:kindergarten_online/generated/l10n.dart';

@RoutePage()
class CreativityPage extends StatefulWidget {
  const CreativityPage({super.key});

  @override
  State<CreativityPage> createState() => _CreativityPageState();
}

class _CreativityPageState extends State<CreativityPage> {
  @override
  void initState() {
    super.initState();
    context.read<CreativityCubit>().creativity();
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return CustomScaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Column(
              children: [
                NavBar(textStyle: textStyle, text: S.of(context).creativity),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 25),
                    child: Column(
                      children: [
                        CreativityCard(textStyle: textStyle),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
