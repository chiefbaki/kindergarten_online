import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kindergarten_online/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/features/chats/presentation/blocs/chat_users_bloc/chat_users_bloc.dart';
import 'package:kindergarten_online/features/chats/presentation/widgets/chat_list_item.dart';
import 'package:kindergarten_online/features/profile/presentation/widgets/custom_divider.dart';
import 'package:kindergarten_online/features/widgets/custom_progress_indicator.dart';

class SearchContacts extends SearchDelegate {
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
            query = "";
          },
          icon: const Icon(
            Icons.clear,
            size: 20,
            color: AppColors.black,
          ))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
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
    return BlocBuilder<ChatUsersBloc, ChatUsersState>(
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
                separatorBuilder: (context, index) => const CustomDivider(),
              );
            },
            failure: ((error) => Center(
                    child: Text(
                  "Отсутствует соединение",
                  style: textStyle.displayLarge,
                ))));
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(
      child: Text(
        "Пусто",
        style: Theme.of(context)
            .textTheme
            .displayLarge!
            .copyWith(color: AppColors.black),
      ),
    );
  }
}
