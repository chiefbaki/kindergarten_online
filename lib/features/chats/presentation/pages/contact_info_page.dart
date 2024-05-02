import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/features/chats/domain/entities/contact_entity.dart';
import 'package:kindergarten_online/features/chats/presentation/widgets/child_card.dart';
import 'package:kindergarten_online/features/chats/presentation/widgets/contact_status_widget.dart';
import 'package:kindergarten_online/features/profile/presentation/widgets/custom_divider.dart';
import 'package:kindergarten_online/features/widgets/custom_appbar.dart';
import 'package:kindergarten_online/features/widgets/custom_scaffold.dart';
import 'package:kindergarten_online/generated/l10n.dart';


@RoutePage()
class ContactInfoPage extends StatelessWidget {
  final ContactResultsEntity entity;
  const ContactInfoPage({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return CustomScaffold(
      appBar:
          CustomAppBar(textStyle: textStyle, title: S.of(context).usersprofile),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContactStatusWidget(
                textStyle: textStyle,
                name: "${entity.firstName} ${entity.lastName}",
                img: entity.avatar ?? "",
              ),
              SizedBox(
                height: 10.h,
              ),
              const CustomDivider(),
              SizedBox(
                height: 15.h,
              ),
              Text(
                S.of(context).children,
                style:
                    textStyle.displayMedium!.copyWith(color: AppColors.black),
              ),
              SizedBox(
                height: 10.h,
              ),
              Flexible(
                  child: ListView.builder(
                itemCount: entity.childrens!.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (_, index) => ChildCard(
                  textStyle: textStyle,
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
