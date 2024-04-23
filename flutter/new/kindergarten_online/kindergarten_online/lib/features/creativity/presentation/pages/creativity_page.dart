import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kindergarten_online/features/creativity/presentation/widgets/creativity_card.dart';
import 'package:kindergarten_online/features/widgets/nav_bar.dart';
import 'package:kindergarten_online/generated/l10n.dart';

@RoutePage()
class CreativityPage extends StatelessWidget {
  const CreativityPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Column(
              children: [
                NavBar(textStyle: textStyle, text: S.of(context).creativity),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                  child: Column(
                    children: [CreativityCard(textStyle: textStyle)],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
