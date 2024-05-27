import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:kindergarten_online/generated/l10n.dart';
import 'package:kindergarten_online/src/features/auth/presentation/widgets/custom_appbar.dart';

@RoutePage()
class CameraPage extends StatelessWidget {
  const CameraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: S.of(context).cctv),
      body: const Center(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
