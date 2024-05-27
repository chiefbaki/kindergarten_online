import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/src/core/config/theme/app_colors.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';
import 'package:kindergarten_online/src/features/chats/presentation/blocs/contact_bloc/contact_bloc.dart';
import 'package:kindergarten_online/src/features/chats/presentation/pages/search_contacts.dart';
import 'package:kindergarten_online/src/features/chats/presentation/widgets/contact_item.dart';
import 'package:kindergarten_online/src/features/profile/presentation/widgets/custom_divider.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_progress_indicator.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_scaffold.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/search_btn.dart';
import 'package:kindergarten_online/generated/l10n.dart';

@RoutePage()
class MyContactsPage extends StatefulWidget {
  const MyContactsPage({super.key});

  @override
  State<MyContactsPage> createState() => _MyContactsPageState();
}

class _MyContactsPageState extends State<MyContactsPage> {
  @override
  void initState() {
    super.initState();
    context.read<ContactBloc>().add(const ContactEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SafeArea(
        child: Padding(
          padding: REdgeInsets.symmetric(vertical: 25, horizontal: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(S.of(context).myContacts,
                      style: context.textTheme.titleLarge),
                  SearchBtn(
                    onPressed: () async {
                      await showSearch(
                          context: context, delegate: SearchContacts());
                    },
                  ),
                ],
              ),
              25.verticalSpace,
              Expanded(child: BlocBuilder<ContactBloc, ContactState>(
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
                      failure: ((error) =>
                          Center(child: Center(child: Text(error)))));
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
