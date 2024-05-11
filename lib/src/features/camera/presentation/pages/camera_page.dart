import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:kindergarten_online/src/features/camera/data/cameras_position_model.dart';
import 'package:kindergarten_online/src/features/camera/presentation/widgets/choice_chip_list.dart';
import 'package:kindergarten_online/src/features/widgets/custom_scaffold.dart';
import 'package:kindergarten_online/src/features/widgets/nav_bar.dart';
import 'package:kindergarten_online/generated/l10n.dart';

const _paddingUnit = 5;

@RoutePage()
class CameraPage extends StatelessWidget {
  const CameraPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return CustomScaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Column(
            children: [
              NavBar(
                textStyle: textStyle,
                text: S.of(context).cameras,
              ),
              Gap(
                _paddingUnit * 5.h,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      ChoiceChipList(textStyle: textStyle),
                      Gap(
                        _paddingUnit * 3.h,
                      ),
                      Expanded(
                          child: GridView.builder(
                              physics: const AlwaysScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: CamerasPosition.positions.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      mainAxisSpacing: 15,
                                      crossAxisSpacing: 15,
                                      childAspectRatio: 1),
                              itemBuilder: (_, index) => Image.asset(
                                  CamerasPosition.positions[index].img)))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
