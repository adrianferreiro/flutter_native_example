import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_native_example/config/routes/router.dart';
import 'package:flutter_native_example/core/theme/app_theme.dart';

void main() {
  runApp(
    ProviderScope(
      child: DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.routes,
      theme: getDarkTheme(),
    );
  }
}
