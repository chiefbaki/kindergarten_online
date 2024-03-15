import 'package:eco_shop/core/config/routes/app_router.dart';
import 'package:eco_shop/core/config/themes/app_colors.dart';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.textFieldColor,
          elevation: 0
        )
      ),
      routerConfig: AppRouter().config(),
    );
  }
}