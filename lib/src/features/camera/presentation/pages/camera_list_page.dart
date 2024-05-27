import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/generated/l10n.dart';
import 'package:kindergarten_online/src/core/config/routes/app_router.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/navbar.dart';
import 'package:kindergarten_online/src/features/camera/data/cameras_position_model.dart';
import 'package:kindergarten_online/src/features/camera/presentation/widgets/choice_chip_list.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_scaffold.dart';

@RoutePage()
class CameraListPage extends StatelessWidget {
  const CameraListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: Navbar(
        title: S.of(context).cameras,
      ),
      body: Padding(
        padding: REdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Column(
          children: [
            const ChoiceChipList(),
            15.verticalSpace,
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
                    itemBuilder: (_, index) => InkWell(
                        onTap: () => _pushToCameraPage(context),
                        child:
                            Image.asset(CamerasPosition.positions[index].img))))
          ],
        ),
      ),
    );
  }

  void _pushToCameraPage(BuildContext context) {
    context.router.push(const CameraRoute());
  }
}
