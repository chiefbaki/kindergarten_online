import 'package:eco_shop/core/config/routes/app_router.dart';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false
      ),
      routerConfig: AppRouter().config(),
    );
  }
}