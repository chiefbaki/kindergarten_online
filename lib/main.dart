import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:kindergarten_online/src/core/config/service_locator/locator.dart';
import 'package:kindergarten_online/src/internal/app.dart';
import 'package:logging/logging.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env.development");
  await setup();
  await ScreenUtil.ensureScreenSize();
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp])
      .then((_) => runApp(const MyApp()));

  if (kDebugMode) {
    _initLogger();
  }
}

void _initLogger() {
  Logger.root.level = Level.ALL;

  Logger.root.onRecord.listen((record) {
    final loggerName = record.loggerName;
    final message = record.message;
    final levelName = record.level;
    final formattedTime = DateFormat("HH:mm:ss").format(record.time);

    if (kDebugMode) {
      print('$loggerName($levelName-$formattedTime):$message');
    }
  });
}
