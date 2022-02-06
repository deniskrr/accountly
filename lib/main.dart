import 'package:core/core.dart';
import 'package:flutter/material.dart';

void main() {
  initDependencies();

  runApp(AccountlyApp());
}

class AccountlyApp extends StatelessWidget {
  AccountlyApp({Key? key}) : super(key: key);

  final router = di<AccountlyNavigator>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}
