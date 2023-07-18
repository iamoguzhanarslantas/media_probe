import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:media_probe/src/common/common.dart' show logger;
import 'package:media_probe/src/home/home.dart' show HomePage;
import 'package:media_probe/src/splash/splash.dart'
    show SplashPageState, splashPageProvider;

class SplashPage extends HookConsumerWidget {
  static const routeName = '/splash';
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final splashPage = ref.watch(splashPageProvider);
    useEffect(
      () {
        if (!splashPage.appInitialized) {
          ref.read(splashPageProvider.notifier).initializeApp();
        } else {
          logger.wtf('should not open splash page if app is initialized');
        }
        return null;
      },
      [],
    );

    ref.listen<SplashPageState>(
      splashPageProvider,
      (previous, next) {
        if (next.appInitialized) {
          logger.i('app initialized');
          context.go(HomePage.routeName);
        }
      },
    );
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
