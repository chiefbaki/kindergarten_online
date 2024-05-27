import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';
import 'package:kindergarten_online/src/features/chats/presentation/blocs/contact_bloc/contact_bloc.dart';
import 'package:kindergarten_online/src/features/chats/presentation/widgets/contact_item.dart';
import 'package:kindergarten_online/src/features/profile/presentation/widgets/custom_divider.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_progress_indicator.dart';
import 'package:kindergarten_online/generated/l10n.dart';

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
          context.read<ContactBloc>().add(const ContactEvent.started());
        },
        icon: Icon(
          Icons.arrow_back_ios,
          size: 20.h,
          color: AppColors.black,
        ));
  }

  @override
  Widget buildResults(BuildContext context) {
    context.read<ContactBloc>().add(ContactEvent.started(query: query));
    return BlocBuilder<ContactBloc, ContactState>(
      builder: (context, state) {
        return state.when(
            initial: () => const SizedBox(),
            loading: () => const CustomProgressIndicator(),
            success: (entity) {
              return entity.results!.isNotEmpty
                  ? ListView.separated(
                      itemCount: entity.count ?? 0,
                      itemBuilder: (_, index) {
                        return ContactCard(
                          entity: entity.results![index],
                        );
                      },
                      separatorBuilder: (context, index) =>
                          const CustomDivider(),
                    )
                  : Center(
                      child: Text(
                        S.of(context).contactIsEmpty,
                        style: context.textTheme.displayMedium!
                            .copyWith(color: AppColors.black),
                      ),
                    );
            },
            failure: ((error) => Center(
                  child: Text(
                    S.of(context).noConnection,
                    style: context.textTheme.displayMedium!
                        .copyWith(color: AppColors.black),
                  ),
                )));
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const SizedBox.shrink();
  }
}
