import 'dart:io';

class CustomProxyHttpOverride extends HttpOverrides {
  final String proxyString;

  /// Warning: Setting this to true in production apps can be dangerous. Use with care!
  final bool allowBadCertificates;

  CustomProxyHttpOverride.withProxy(
    this.proxyString, {
    this.allowBadCertificates = false,
  });

  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..findProxy = (uri) {
        assert(
          proxyString.isNotEmpty,
          'You must set a valid proxy if you enable it!',
        );
        return "PROXY $proxyString;";
      }
      ..badCertificateCallback = allowBadCertificates
          ? (X509Certificate cert, String host, int port) => true
          : null;
  }
}
