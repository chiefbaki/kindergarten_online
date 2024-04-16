import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  final String img;
  final String title;
  const MenuCard(
      {super.key,
      required this.textStyle,
      required this.img,
      required this.title});

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
