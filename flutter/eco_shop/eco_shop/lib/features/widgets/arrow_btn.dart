import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ArrowBtn extends StatelessWidget {
  const ArrowBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          context.router.pop();
        },
        icon: SvgPicture.asset(
          "assets/images/chevron-left.svg",
          width: 24,
          height: 24,
        ));
  }
}
