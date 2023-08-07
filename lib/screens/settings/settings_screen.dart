import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const Text('Hello'),
            FilledButton(onPressed: () => context.pushNamed('home'), child: const Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}