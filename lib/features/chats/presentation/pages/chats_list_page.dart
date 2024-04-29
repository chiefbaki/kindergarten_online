import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/features/auth/presentation/widgets/custom_text_btn.dart';
import 'package:kindergarten_online/features/chats/presentation/pages/search_chat.dart';
import 'package:kindergarten_online/features/chats/presentation/widgets/chat_list_item.dart';
import 'package:kindergarten_online/features/profile/presentation/widgets/custom_divider.dart';
import 'package:kindergarten_online/features/widgets/custom_scaffold.dart';
import 'package:kindergarten_online/features/widgets/search_btn.dart';
import 'package:kindergarten_online/generated/l10n.dart';

@RoutePage()
class ChatsListPage extends StatelessWidget {
  const ChatsListPage({super.key});

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
                  Text(S.of(context).chats, style: textStyle.titleLarge),
                  SearchBtn(
                    onPressed: () async {
                      await showSearch(
                          context: context, delegate: SearchChat());
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.group_add_outlined,
                    size: 25,
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  CustomTextBtn(
                      textStyle: textStyle,
                      onPressed: () {},
                      name: "Создать группу")
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              Expanded(
                child: ListView.separated(
                  itemCount: 10,
                  itemBuilder: (_, index) {
                    return ChatListItem(textStyle: textStyle);
                  },
                  separatorBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: CustomDivider(),
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
