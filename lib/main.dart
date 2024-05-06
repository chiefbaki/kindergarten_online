import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kindergarten_online/core/service_locator/locator.dart';
import 'package:kindergarten_online/features/chats/data/data_sources/remote/remote_chat_data.dart';
import 'package:kindergarten_online/internal/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env.development");
  final path = dotenv.env["API_URL"];
  final dio = Dio(BaseOptions(baseUrl: path ?? "", headers: {
    "Authorization":
        "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzE1MTU4MDIyLCJpYXQiOjE3MTQ1NTMyMjIsImp0aSI6ImM1Y2MzNjI5YTk2MjQwZTRiNmFiNGExZmRkZDhmMjVlIiwidXNlcl9pZCI6Nn0.5AueWMD8ivkJx334f4n2Dj1aEbatf8fA___kiubDMQo"
  }));
  final obj = RemoteChatData(dio);
  final vari = await obj.getMessages(id: "7");
  print(vari.data.results.first.content);
  await setup();
  await ScreenUtil.ensureScreenSize();
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp])
      .then((_) => runApp(const MyApp()));
  ;
}
