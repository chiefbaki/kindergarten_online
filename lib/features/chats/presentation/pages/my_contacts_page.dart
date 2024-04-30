import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/features/chats/presentation/bloc/contact_bloc/contact_bloc.dart';
import 'package:kindergarten_online/features/chats/presentation/pages/search_contacts.dart';
import 'package:kindergarten_online/features/chats/presentation/widgets/contact_item.dart';
import 'package:kindergarten_online/features/profile/presentation/widgets/custom_divider.dart';
import 'package:kindergarten_online/features/widgets/custom_progress_indicator.dart';
import 'package:kindergarten_online/features/widgets/custom_scaffold.dart';
import 'package:kindergarten_online/features/widgets/search_btn.dart';
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
                  Text(S.of(context).myContacts, style: textStyle.titleLarge),
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
              Expanded(child: BlocBuilder<ContactBloc, ContactState>(
                builder: (context, state) {
                  return state.when(
                      initial: () => const SizedBox(),
                      loading: () => const CustomProgressIndicator(),
                      success: (entity) {
                        return ListView.separated(
                          itemCount: entity.count ?? 0,
                          itemBuilder: (_, index) {
                            return ContactCard(
                              textStyle: textStyle,
                              entity: entity.results![index],
                            );
                          },
                          separatorBuilder: (context, index) =>
                              const CustomDivider(),
                        );
                      },
                      failure: ((error) => Text(error)));
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
