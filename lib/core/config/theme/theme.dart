import 'package:flutter/material.dart';
import 'package:kindergarten_online/core/utils/resources/resources.dart';

ThemeData theme() {
  return ThemeData(
      fontFamily: AppFonts.inter,
      textTheme: const TextTheme(
        displayLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        displayMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        displaySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
      ));
}

// displayLarge = displayLarge ?? headline1,
//        displayMedium = displayMedium ?? headline2,
//        displaySmall = displaySmall ?? headline3,
//        headlineMedium = headlineMedium ?? headline4,
//        headlineSmall = headlineSmall ?? headline5,
//        titleLarge = titleLarge ?? headline6,
//        titleMedium = titleMedium ?? subtitle1,
//        titleSmall = titleSmall ?? subtitle2,
//        bodyLarge = bodyLarge ?? bodyText1,
//        bodyMedium = bodyMedium ?? bodyText2,
//        bodySmall = bodySmall ?? caption,
//        labelLarge = labelLarge ?? button,
//        labelSmall = labelSmall ?? overline;