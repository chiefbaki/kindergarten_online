import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';
import 'package:kindergarten_online/src/features/chats/domain/entities/contact_entity.dart';
import 'package:kindergarten_online/src/features/chats/presentation/widgets/child_card.dart';
import 'package:kindergarten_online/src/features/chats/presentation/widgets/contact_status_widget.dart';
import 'package:kindergarten_online/src/features/profile/presentation/widgets/custom_divider.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_appbar.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_scaffold.dart';
import 'package:kindergarten_online/generated/l10n.dart';

@RoutePage()
class ContactInfoPage extends StatelessWidget {
  final ContactResultsEntity entity;
  const ContactInfoPage({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: CustomAppBar(title: S.of(context).usersprofile),
      body: Padding(
        padding: REdgeInsets.symmetric(vertical: 25, horizontal: 15),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContactStatusWidget(
                name: "${entity.firstName} ${entity.lastName}",
                img: entity.avatar ?? "",
              ),
              10.verticalSpace,
              const CustomDivider(),
              15.verticalSpace,
              Text(
                S.of(context).children,
                style: context.textTheme.displayMedium!
                    .copyWith(color: AppColors.black),
              ),
              10.verticalSpace,
              Flexible(
                  child: ListView.builder(
                itemCount: entity.childrens!.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (_, index) => ChildCard(
                  name:
                      "${entity.childrens![index].firstName} ${entity.childrens![index].lastName}",
                  age: '4',
                  number:
                      entity.childrens![index].group!.kindergarten.toString(),
                  group: entity.childrens![index].group!.name ?? "",
                ),
              )),
              const CustomDivider()
            ],
          ),
        ),
      ),
    );
  }
}
