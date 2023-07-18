import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:media_probe/src/common/common.dart' show logger;
import 'package:media_probe/src/splash/splash.dart' show SplashPageState;

class SplashPageStateNotifier extends StateNotifier<SplashPageState> {
  final Ref ref;
  SplashPageStateNotifier({required this.ref}) : super(SplashPageState.init());
  Future<void> initializeApp() async {
    try {
      logger.i('initializeApp');
      state = SplashPageState.init();
      
      state = state.copyWith(appInitialized: true);
    } catch (e) {
      logger.e(e);
    }
  }
}
