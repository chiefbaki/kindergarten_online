import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  final String img;
  final String title;
  final dynamic route;
  const MenuCard(
      {super.key,
      required this.textStyle,
      required this.img,
      required this.title,
      required this.route});

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.push(route);
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
            style: textStyle.displaySmall,
          )
        ],
      ),
    );
  }
}
