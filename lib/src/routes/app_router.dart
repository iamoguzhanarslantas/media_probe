import 'package:go_router/go_router.dart';

import 'package:media_probe/src/home/home.dart' show HomePage;
import 'package:media_probe/src/splash/splash.dart' show SplashPage;

final GoRouter router = GoRouter(
  initialLocation: SplashPage.routeName,
  routes: <RouteBase>[
    GoRoute(
      path: HomePage.routeName,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: SplashPage.routeName,
      builder: (context, state) => const SplashPage(),
    ),
  ],
);
