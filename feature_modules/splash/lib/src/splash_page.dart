import 'package:core/core.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final navigator = di<AccountlyNavigator>();

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      navigator.navigateToRoute(context, '/tasks');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Accountly'),
      ),
    );
  }
}
