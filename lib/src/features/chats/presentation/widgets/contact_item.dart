import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/src/core/config/routes/app_router.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';
import 'package:kindergarten_online/src/core/utils/resources/resources.dart';
import 'package:kindergarten_online/src/features/chats/domain/entities/contact_entity.dart';
import 'package:kindergarten_online/generated/l10n.dart';

class ContactCard extends StatelessWidget {
  final ContactResultsEntity entity;
  const ContactCard({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.router.push(ContactInfoRoute(entity: entity)),
      child: Padding(
        padding: REdgeInsets.symmetric(vertical: 10),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.grey)),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: ClipOval(
                    child: Image.asset(
                  // entity.avatar ?? "",
                  Imgs.ava,
                  height: 40,
                )),
              )),
          title: Text("${entity.firstName} ${entity.lastName}",
              style: context.textTheme.displayMedium!
                  .copyWith(color: AppColors.black)),
          subtitle: RichText(
              text: TextSpan(
                  text: S.of(context).children,
                  style: context.textTheme.displaySmall!
                      .copyWith(color: AppColors.grey),
                  children: entity.childrens!
                      .map((e) => TextSpan(
                          text: " ${e.firstName} ${e.lastName}",
                          style: context.textTheme.titleSmall!
                              .copyWith(color: AppColors.black)))
                      .toList())),
        ),
      ),
    );
  }
}
