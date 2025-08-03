import 'package:flutter_native_example/features/location/presentation/screen.dart/location_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_native_example/features/home/presentation/pages/home_screen.dart';

class AppRouter {
  static final GoRouter _routes = GoRouter(
    initialLocation: HomeScreen.path,
    routes: [
      GoRoute(
        path: HomeScreen.path,
        name: HomeScreen.name,
        builder: (_, __) => const HomeScreen(),
        routes: [
          GoRoute(
            path: LocationScreen.path,
            name: LocationScreen.name,
            builder: (_, __) => const LocationScreen(),
          ),
        ],
      ),
    ],
  );

  /// Router Getter
  static GoRouter get routes => _routes;
}
