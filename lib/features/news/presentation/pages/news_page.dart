import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/features/news/presentation/bloc/news_bloc.dart';
import 'package:kindergarten_online/features/news/presentation/widgets/news_item.dart';
import 'package:kindergarten_online/features/widgets/custom_refresh_indicator.dart';
import 'package:kindergarten_online/features/widgets/custom_scaffold.dart';
import 'package:kindergarten_online/features/widgets/nav_bar.dart';
import 'package:kindergarten_online/generated/l10n.dart';

@RoutePage()
class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  void initState() {
    super.initState();
    context.read<NewsBloc>().add(const NewsEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return CustomScaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Column(
            children: [
              NavBar(textStyle: textStyle, text: S.of(context).news),
              SizedBox(
                height: 25.h,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: CustomRefreshIndicator(
                      onRefresh: () async {
                        await Future.delayed(const Duration(milliseconds: 2),
                            () {
                          context
                              .read<NewsBloc>()
                              .add(const NewsEvent.started());
                        });
                      },
                      child: NewsItem(textStyle: textStyle)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
