import 'package:flutter/material.dart';

import 'package:media_probe/src/common/common.dart' show AppThemes;
import 'package:media_probe/src/config/config.dart' show AppConfig;
import 'package:media_probe/src/routes/routes.dart' show router;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      title: AppConfig.appTitle,
      theme: AppThemes.lightTheme,
    );
  }
}
