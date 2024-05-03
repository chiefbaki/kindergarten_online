import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/features/chats/presentation/blocs/chat_users_bloc/chat_users_bloc.dart';
import 'package:kindergarten_online/features/chats/presentation/widgets/chat_list_item.dart';
import 'package:kindergarten_online/features/profile/presentation/widgets/custom_divider.dart';
import 'package:kindergarten_online/features/widgets/custom_progress_indicator.dart';
import 'package:kindergarten_online/generated/l10n.dart';

class SearchChat extends SearchDelegate {
  @override
  TextStyle? get searchFieldStyle => const TextStyle(
      fontSize: 18, fontWeight: FontWeight.w600, color: AppColors.black);

  @override
  TextInputAction get textInputAction => TextInputAction.next;

  @override
  double? get leadingWidth => 20;
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(
            Icons.clear,
            size: 20,
          ))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
          context.read<ChatUsersBloc>().add(const ChatUsersEvent.viewUsers());
        },
        icon: const Icon(
          Icons.arrow_back_ios,
          size: 20,
          color: AppColors.black,
        ));
  }

  @override
  Widget buildResults(BuildContext context) {
    context.read<ChatUsersBloc>().add(ChatUsersEvent.viewUsers(query: query));
    final textStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
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
                            textStyle: textStyle,
                            entity: entity[index],
                          );
                        },
                        separatorBuilder: (context, index) =>
                            const CustomDivider(),
                      )
                    : Center(
                        child: Text(
                          S.of(context).empty,
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(color: AppColors.black),
                        ),
                      );
              },
              failure: ((error) => Center(
                      child: Text(
                    S.of(context).noConnection,
                    style: textStyle.displayMedium!
                        .copyWith(color: AppColors.black),
                  ))));
        },
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const SizedBox.shrink();
  }
}
