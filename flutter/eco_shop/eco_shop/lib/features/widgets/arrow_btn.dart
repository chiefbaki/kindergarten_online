import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ArrowBtn extends StatelessWidget {
  final Function() onPressed;
  const ArrowBtn({
    super.key,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: SvgPicture.asset(
          "assets/images/chevron-left.svg",
          width: 24,
          height: 24,
        ));
  }
}
