import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/navbar.dart';
import 'package:kindergarten_online/src/features/news/presentation/bloc/news_bloc.dart';
import 'package:kindergarten_online/src/features/news/presentation/widgets/news_item.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_refresh_indicator.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/custom_scaffold.dart';
import 'package:kindergarten_online/generated/l10n.dart';

const double _paddingUnit = 5;
const int _duration = 2;

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
      appBar: Navbar(textStyle: textStyle, title: S.of(context).news),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                  _paddingUnit * 3, _paddingUnit * 5, _paddingUnit * 3, 0),
              child: CustomRefreshIndicator(
                  onRefresh: () async {
                    await Future.delayed(
                        const Duration(milliseconds: _duration), () {
                      context.read<NewsBloc>().add(const NewsEvent.started());
                    });
                  },
                  child: NewsItem(textStyle: textStyle)),
            ),
          )
        ],
      ),
    );
  }
}
