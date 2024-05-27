import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kindergarten_online/src/core/utils/extensions/context_extensions.dart';

class MenuCard extends StatelessWidget {
  final String img;
  final String title;
  final dynamic route;
  const MenuCard(
      {super.key, required this.img, required this.title, required this.route});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.replace(route);
      },
      child: Column(
        children: [
          Image.asset(
            img,
            width: 30,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: context.textTheme.displaySmall,
          )
        ],
      ),
    );
  }
}
