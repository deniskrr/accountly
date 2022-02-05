import 'package:accountly/app_router.gr.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AccountlyApp());
}

class AccountlyApp extends StatelessWidget {
  AccountlyApp({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
    );
  }
}
