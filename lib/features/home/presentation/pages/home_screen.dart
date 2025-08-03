import 'package:flutter/material.dart';
import 'package:flutter_native_example/features/location/presentation/screen.dart/location_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  static const name = 'home-screen';
  static const path = '/home';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Flutter native')),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Text(
              'Características nativas',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            _NativeFeatureButton(
              title: 'Obtener ubicación actual (GPS)',
              onTap: () {
                final String path = LocationScreen.name;

                context.pushNamed(path);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _NativeFeatureButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const _NativeFeatureButton({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      ),
    );
  }
}
