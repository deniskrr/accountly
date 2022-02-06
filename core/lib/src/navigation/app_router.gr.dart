// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SplashPage());
    },
    TasksRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const TasksPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SplashRoute.name, path: '/'),
        RouteConfig(TasksRoute.name, path: '/tasks')
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [TasksPage]
class TasksRoute extends PageRouteInfo<void> {
  const TasksRoute() : super(TasksRoute.name, path: '/tasks');

  static const String name = 'TasksRoute';
}
