import 'package:accountly/placeholder_page.dart';
import 'package:auto_route/annotations.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[AutoRoute(page: PlaceholderPage, initial: true)],
)
class $AppRouter {}
