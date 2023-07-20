import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:media_probe/src/home/home.dart' show ArticleModel;

part 'home_page_state.freezed.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState({
    required bool isLoading,
    required String? error,
    required List<ArticleModel>? data,
  }) = _HomePageState;

  factory HomePageState.init() => const HomePageState(
        isLoading: false,
        error: null,
        data: [],
      );
}
