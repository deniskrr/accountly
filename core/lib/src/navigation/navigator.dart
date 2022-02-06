import 'package:flutter/cupertino.dart';

mixin AccountlyNavigator {
  late RouteInformationParser<Object> routeInformationParser;
  late RouterDelegate<Object> routerDelegate;

  navigateToRoute(BuildContext context, String path, {dynamic args});
}
