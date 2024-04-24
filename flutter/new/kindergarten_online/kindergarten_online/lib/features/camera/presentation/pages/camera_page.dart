import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/features/camera/data/cameras_position_model.dart';
import 'package:kindergarten_online/features/camera/presentation/widgets/choice_chip_list.dart';
import 'package:kindergarten_online/features/widgets/custom_scaffold.dart';
import 'package:kindergarten_online/features/widgets/nav_bar.dart';
import 'package:kindergarten_online/generated/l10n.dart';

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
              SizedBox(
                height: 25.h,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      ChoiceChipList(textStyle: textStyle),
                      SizedBox(
                        height: 15.h,
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
