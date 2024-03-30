import 'package:url_launcher/url_launcher.dart';

void uriLaunch({required String link}){
      launchUrl(Uri.parse(link));
    }