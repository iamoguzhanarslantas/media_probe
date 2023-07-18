import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_page_state.freezed.dart';

@freezed
class SplashPageState with _$SplashPageState {
  const factory SplashPageState({
    required bool appInitialized,
    required bool hasError,
  }) = _SplashPageState;

  factory SplashPageState.init() => const SplashPageState(
        appInitialized: false,
        hasError: false,
      );
}