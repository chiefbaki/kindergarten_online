import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/utils/resources/resources.dart';
import 'package:kindergarten_online/features/chats/presentation/pages/search_contacts.dart';
import 'package:kindergarten_online/features/chats/presentation/widgets/contact_item.dart';
import 'package:kindergarten_online/features/profile/presentation/widgets/custom_divider.dart';
import 'package:kindergarten_online/features/widgets/custom_scaffold.dart';
import 'package:kindergarten_online/features/widgets/search_btn.dart';

@RoutePage()
class MyContactsPage extends StatelessWidget {
  const MyContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return CustomScaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Мои контакты", style: textStyle.titleLarge),
                  SearchBtn(
                    onPressed: () async {
                      await showSearch(
                          context: context, delegate: SearchContacts());
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              Expanded(
                  child: ListView.separated(
                itemCount: 10,
                itemBuilder: (_, index) {
                  return ContactCard(
                    textStyle: textStyle,
                    children: 'Колесов Марк',
                    name: "Ислам Курбанов",
                    img: Imgs.ava,
                  );
                },
                separatorBuilder: (context, index) => const CustomDivider(),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
