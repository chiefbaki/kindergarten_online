import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/features/creativity/presentation/bloc/creativity_bloc/creativity_bloc.dart';
import 'package:kindergarten_online/src/features/creativity/presentation/pages/creativity_search.dart';
import 'package:kindergarten_online/src/features/creativity/presentation/widgets/creativity_card.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_refresh_indicator.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_scaffold.dart';
import 'package:kindergarten_online/generated/l10n.dart';

const _paddingUnit = 5;
const _duration = 2;
const double _size = 25;

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
    context.read<CreativityBloc>().add(const CreativityEvent.creativity());
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return CustomScaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
                _paddingUnit * 3, _paddingUnit * 5, _paddingUnit * 3, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(S.of(context).creativity, style: textStyle.titleLarge),
                    IconButton(
                        onPressed: () async {
                          await showSearch(
                              context: context, delegate: CustomSearch());
                        },
                        icon: const Icon(
                          Icons.search,
                          color: AppColors.black,
                          size: _size,
                        )),
                  ],
                ),
                Gap(
                  _paddingUnit * 4.h,
                ),
                CustomRefreshIndicator(
                  onRefresh: () async {
                    Future.delayed(const Duration(milliseconds: _duration), () {
                      context
                          .read<CreativityBloc>()
                          .add(const CreativityEvent.creativity());
                    });
                  },
                  child: CreativityCard(textStyle: textStyle),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
