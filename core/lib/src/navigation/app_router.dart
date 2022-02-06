import 'package:auto_route/auto_route.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart' hide Navigator;
import 'package:splash/splash.dart';
import 'package:task/task.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: TasksPage, path: '/tasks'),
  ],
)
class AppRouter extends _$AppRouter with AccountlyNavigator {
  AppRouter() {
    routeInformationParser = defaultRouteParser();
    routerDelegate = delegate();
  }

  get routePathsMap =>
      {for (RouteConfig route in routes) route.name: route.path};

  PageRouteInfo? _createRouteFromPathAndArgs(String path, {dynamic args}) {
    final routesMap = routePathsMap;

    if (path == routesMap[SplashRoute.name]) {
      return const SplashRoute();
    } else if (path == routesMap[TasksRoute.name]) {
      return const TasksRoute();
    }

    return null;
  }

  @override
  navigateToRoute(BuildContext context, String path, {dynamic args}) {
    final route = _createRouteFromPathAndArgs(path, args: args);

    if (route != null) {
      push(route);
    }
  }
}
