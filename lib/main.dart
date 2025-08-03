import 'package:flutter/material.dart';
import 'package:flutter_native_example/config/routes/router.dart';
import 'package:flutter_native_example/core/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.routes,
      theme: getDarkTheme(),
    );
  }
}
