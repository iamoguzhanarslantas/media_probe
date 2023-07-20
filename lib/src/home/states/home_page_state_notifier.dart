import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:media_probe/src/common/common.dart' show logger;
import 'package:media_probe/src/home/home.dart'
    show HomePageState, IArticleRepository;

class HomePageStateNotifier extends StateNotifier<HomePageState> {
  final Ref ref;
  final IArticleRepository articleRepository;

  HomePageStateNotifier(
    this.ref, {
    required this.articleRepository,
  }) : super(HomePageState.init()) {
    fetchData();
  }

  Future<void> fetchData() async {
    logger.i('fetchData');
    state = state.copyWith(
      isLoading: true,
    );
    try {
      final data = await articleRepository.getArticles();
      if (data != null) {
        state = state.copyWith(
          isLoading: false,
          data: data,
        );
        logger.i('success');
      } else {
        state = state.copyWith(
          isLoading: false,
          error: 'No data',
        );
        logger.e('No data');
      }
    } catch (e) {
      state = state.copyWith(
        error: e.toString(),
      );
    }
  }
}
