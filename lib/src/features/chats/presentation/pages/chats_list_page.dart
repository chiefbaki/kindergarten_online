import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';
import 'package:kindergarten_online/src/features/auth/presentation/widgets/custom_text_btn.dart';
import 'package:kindergarten_online/src/features/chats/domain/entities/req/create_group_req_entity.dart';
import 'package:kindergarten_online/src/features/chats/presentation/blocs/chat_users_bloc/chat_users_bloc.dart';
import 'package:kindergarten_online/src/features/chats/presentation/blocs/create_group_bloc/create_group_bloc.dart';
import 'package:kindergarten_online/src/features/chats/presentation/pages/search_chat.dart';
import 'package:kindergarten_online/src/features/chats/presentation/widgets/chat_list_item.dart';
import 'package:kindergarten_online/src/features/profile/presentation/widgets/custom_divider.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_progress_indicator.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_refresh_indicator.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_scaffold.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/search_btn.dart';
import 'package:kindergarten_online/generated/l10n.dart';

const _paddingUnit = 5;

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
    return CustomScaffold(
      body: SafeArea(
        child: Padding(
          padding: REdgeInsets.symmetric(
              vertical: _paddingUnit * 5, horizontal: _paddingUnit * 3),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(S.of(context).chats,
                      style: context.textTheme.titleLarge),
                  SearchBtn(
                    onPressed: () async {
                      await showSearch(
                          context: context, delegate: SearchChat());
                    },
                  ),
                ],
              ),
              10.verticalSpace,
              Row(
                children: [
                  Icon(
                    Icons.group_add_outlined,
                    size: 25.h,
                  ),
                  15.horizontalSpace,
                  BlocListener<CreateGroupBloc, CreateGroupState>(
                    listener: (context, state) {
                      state.when(initial: () {
                        debugPrint("initial");
                      }, loading: () {
                        debugPrint("loading");
                      }, success: (entity) {
                        debugPrint("success");
                      }, failure: (error) {
                        debugPrint(error);
                      });
                    },
                    child: CustomTextBtn(
                        onPressed: () {
                          context.read<CreateGroupBloc>().add(
                              const Create(entity: CreateGroupReqEntity()));
                        },
                        name: S.of(context).createGroup),
                  )
                ],
              ),
              25.verticalSpace,
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
                            return entity.isNotEmpty
                                ? ListView.separated(
                                    itemCount: entity.length,
                                    itemBuilder: (_, index) {
                                      return ChatListItem(
                                        entity: entity[index],
                                      );
                                    },
                                    separatorBuilder: (context, index) =>
                                        const CustomDivider(),
                                  )
                                : Center(
                                    child: Text(
                                      S.of(context).chatListIsEmpty,
                                      style: context.textTheme.displayMedium!
                                          .copyWith(color: AppColors.black),
                                    ),
                                  );
                          },
                          failure: ((error) => Center(child: Text(error))));
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
