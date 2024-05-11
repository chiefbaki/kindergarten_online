import 'dart:io';

import 'package:flutter/material.dart';

class CustomRefreshIndicator extends StatelessWidget {
  final Future<void> Function() onRefresh;
  final Widget child;
  const CustomRefreshIndicator(
      {super.key, required this.onRefresh, required this.child});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? RefreshIndicator.adaptive(
            onRefresh: onRefresh,
            child: child,
          )
        : RefreshIndicator(
            child: child,
            onRefresh: () async {
              Future.delayed(const Duration(milliseconds: 1), () {
                onRefresh;
              });
            });
  }
}
