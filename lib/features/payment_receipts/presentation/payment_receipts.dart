import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kindergarten_online/features/widgets/nav_bar.dart';
import 'package:kindergarten_online/generated/l10n.dart';

/// In development
@RoutePage()
class PaymentReceiptsPage extends StatelessWidget {
  const PaymentReceiptsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      body: Column(
        children: [
          NavBar(textStyle: textStyle, text: S.of(context).paymentReceipts)
        ],
      ),
    );
  }
}
