import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:media_probe/src/home/home.dart'
    show ArticleRepository, HomePageState, HomePageStateNotifier;

final articleRepositoryProvider = Provider<ArticleRepository>(
  (ref) => ArticleRepository(ref),
);

final homePageStateNotifierProvider =
    StateNotifierProvider<HomePageStateNotifier, HomePageState>(
  (ref) => HomePageStateNotifier(
    ref,
    articleRepository: ref.watch(articleRepositoryProvider),
  ),
);
