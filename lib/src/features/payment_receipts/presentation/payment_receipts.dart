import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kindergarten_online/generated/l10n.dart';
import 'package:kindergarten_online/src/core/utils/presentation/widgets/navbar.dart';

/// In development
@RoutePage()
class PaymentReceiptsPage extends StatelessWidget {
  const PaymentReceiptsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      appBar:
          Navbar(textStyle: textStyle, title: S.of(context).paymentReceipts),
      body: const Column(
        children: [],
      ),
    );
  }
}
