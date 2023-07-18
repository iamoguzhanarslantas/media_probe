import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:media_probe/src/app.dart' show App;

void main() {
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
