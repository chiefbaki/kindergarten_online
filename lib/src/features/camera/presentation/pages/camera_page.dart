import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:kindergarten_online/generated/l10n.dart';
import 'package:kindergarten_online/src/features/auth/presentation/widgets/custom_appbar.dart';

@RoutePage()
class CameraPage extends StatelessWidget {
  const CameraPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      appBar: CustomAppBar(textStyle: textStyle, title: S.of(context).cctv),
      body: Center(
        child: Column(
          children: [
            
          ],
        ),
      ),
    );
  }
}
