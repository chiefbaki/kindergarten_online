import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/src/core/config/service_locator/locator.dart';
import 'package:kindergarten_online/src/internal/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env.development");
  await setup();
  await ScreenUtil.ensureScreenSize();
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp])
      .then((_) => runApp(const MyApp()));

  // final url = dotenv.env["WSS_URL"];
  // const token =
  //     "6/?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzE1ODUyOTgyLCJpYXQiOjE3MTUyNDgxODIsImp0aSI6ImQ2OTZkMjBjNzJmMzQ4YTBhMjRjYjVhNjQ5MjQxNmFlIiwidXNlcl9pZCI6Nn0.lQ-IrWB11DAz5NV56ps1q1AHjUEj8wZVnNeRCIXZuhs";
  // final client = WebSocketClient(WebSocketOptions.common(
  //   connectionRetryInterval: (
  //     min: const Duration(milliseconds: 500),
  //     max: const Duration(seconds: 15),
  //   ),
  // ))
  //   ..stream.listen((msg) => print("< $msg"))
  //   ..stateChanges.listen((state) => print("* $state"))
  //   ..connect("$url$token")
  //   ..add("Hello");

  // Timer(const Duration(seconds: 1), () async {
  //   await client.close(); // Close the connection
  //   print('Metrics:\n${client.metrics}'); // Print the metrics
  //   io.exit(0); // Exit the process
  // });
}
