import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:media_probe/src/home/home.dart' show DetailPage, HomePage;
import 'package:media_probe/src/splash/splash.dart' show SplashPage;

final routerProvider = Provider(
  (ref) => GoRouter(
    initialLocation: SplashPage.routeName,
    routes: <RouteBase>[
      GoRoute(
        path: DetailPage.routeName,
        builder: (context, state) => const DetailPage(),
      ),
      GoRoute(
        path: HomePage.routeName,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: SplashPage.routeName,
        builder: (context, state) => const SplashPage(),
      ),
    ],
  ),
);
