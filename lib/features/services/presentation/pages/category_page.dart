import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kindergarten_online/features/services/presentation/widgets/product_item.dart';
import 'package:kindergarten_online/features/widgets/custom_appbar.dart';
import 'package:kindergarten_online/features/widgets/custom_scaffold.dart';

@RoutePage()
class CategoryPage extends StatelessWidget {
  final String? title;
  final String? id;
  const CategoryPage({super.key, this.title, this.id});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return CustomScaffold(
        appBar: CustomAppBar(
          textStyle: textStyle,
          title: title ?? "",
        ),
        body: ProductItem(
          id: id ?? "",
        ));
  }
}
