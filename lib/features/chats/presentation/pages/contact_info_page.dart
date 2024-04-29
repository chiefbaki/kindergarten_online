import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/features/chats/presentation/widgets/child_card.dart';
import 'package:kindergarten_online/features/chats/presentation/widgets/contact_status_widget.dart';
import 'package:kindergarten_online/features/profile/presentation/widgets/custom_divider.dart';
import 'package:kindergarten_online/features/widgets/custom_appbar.dart';
import 'package:kindergarten_online/features/widgets/custom_scaffold.dart';

@RoutePage()
class ContactInfoPage extends StatelessWidget {
  const ContactInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return CustomScaffold(
      appBar: CustomAppBar(textStyle: textStyle, title: "Профиль пользователя"),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContactStatusWidget(textStyle: textStyle),
              SizedBox(
                height: 10.h,
              ),
              const CustomDivider(),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "Дети:",
                style:
                    textStyle.displayMedium!.copyWith(color: AppColors.black),
              ),
              SizedBox(
                height: 10.h,
              ),
              Flexible(
                  child: ListView.builder(
                itemCount: 4,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (_, index) => ChildCard(
                  textStyle: textStyle,
                  name: 'Станислав Криницын',
                  age: '4',
                  number: '1',
                  group: 'Зайчики',
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
