import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  static const routeName = '/splash';
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Splash Page'),
      ),
    );
  }
}
