import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:kindergarten_online/features/auth/presentation/widgets/custom_text_btn.dart';
import 'package:kindergarten_online/features/chats/domain/entities/req/create_group_req_entity.dart';
import 'package:kindergarten_online/features/chats/presentation/blocs/chat_users_bloc/chat_users_bloc.dart';
import 'package:kindergarten_online/features/chats/presentation/blocs/create_group_bloc/create_group_bloc.dart';
import 'package:kindergarten_online/features/chats/presentation/pages/search_chat.dart';
import 'package:kindergarten_online/features/chats/presentation/widgets/chat_list_item.dart';
import 'package:kindergarten_online/features/profile/presentation/widgets/custom_divider.dart';
import 'package:kindergarten_online/features/widgets/custom_progress_indicator.dart';
import 'package:kindergarten_online/features/widgets/custom_refresh_indicator.dart';
import 'package:kindergarten_online/features/widgets/custom_scaffold.dart';
import 'package:kindergarten_online/features/widgets/search_btn.dart';
import 'package:kindergarten_online/generated/l10n.dart';

@RoutePage()
class ChatsListPage extends StatefulWidget {
  const ChatsListPage({super.key});

  @override
  State<ChatsListPage> createState() => _ChatsListPageState();
}

class _ChatsListPageState extends State<ChatsListPage> {
  @override
  void initState() {
    super.initState();
    context.read<ChatUsersBloc>().add(const ChatUsersEvent.viewUsers());
  }

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
              Gap(
                10.h,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.group_add_outlined,
                    size: 25,
                  ),
                  Gap(
                    15.w,
                  ),
                  BlocListener<CreateGroupBloc, CreateGroupState>(
                    listener: (context, state) {
                      state.when(initial: () {
                        debugPrint("initial");
                      }, loading: () {
                        debugPrint("loading");
                      }, success: (entity) {
                        debugPrint("initial");
                      }, failure: (error) {
                        debugPrint(error);
                      });
                    },
                    child: CustomTextBtn(
                        textStyle: textStyle,
                        onPressed: () {
                          context.read<CreateGroupBloc>().add(
                              const Create(entity: CreateGroupReqEntity()));
                        },
                        name: S.of(context).createGroup),
                  )
                ],
              ),
              Gap(
                25.h,
              ),
              Expanded(
                child: CustomRefreshIndicator(
                  onRefresh: () async {
                    context
                        .read<ChatUsersBloc>()
                        .add(const ChatUsersEvent.viewUsers());
                  },
                  child: BlocBuilder<ChatUsersBloc, ChatUsersState>(
                    builder: (context, state) {
                      return state.when(
                          initial: () => const SizedBox(),
                          loading: () => const CustomProgressIndicator(),
                          success: (entity) {
                            return ListView.separated(
                              itemCount: entity.length,
                              itemBuilder: (_, index) {
                                return ChatListItem(
                                  textStyle: textStyle,
                                  entity: entity[index],
                                );
                              },
                              separatorBuilder: (context, index) =>
                                  const CustomDivider(),
                            );
                          },
                          failure: ((error) => Center(
                                  child: Text(
                                "Отсутствует соединение",
                                style: textStyle.displayLarge,
                              ))));
                    },
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
